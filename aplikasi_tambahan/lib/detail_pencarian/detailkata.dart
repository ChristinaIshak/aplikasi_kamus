import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tambahan/penting/db_provider.dart';
import 'package:aplikasi_tambahan/detail_pencarian/detailkata2.dart';
import 'package:aplikasi_tambahan/detail_pencarian/detailkata3.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailKataPage extends StatelessWidget {
  const DetailKataPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic detail = ModalRoute.of(context)!.settings.arguments;
    final String? dataId = detail?.id_tk;
    final String? dataKode = detail?.kode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Kata"),
      ),
      body: FutureBuilder<Map<String, List<Map<String, dynamic>>>>(
        future: DBProvider.db.getResults3(dataId, dataKode),
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, List<Map<String, dynamic>>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // Hasil dari future query
          Map<String, List<Map<String, dynamic>>> results = snapshot.data!;
          List<Map<String, dynamic>> turunanMaknaResults =
              results['turunan_makna']!;
          List<Map<String, dynamic>> kataJambiKtResults =
              results['kata_jambi_kt']!;
          List<Map<String, dynamic>> kataJambiGkResults =
              results['kata_jambi_gk']!;
          List<Map<String, dynamic>> homonimResults = results['homonim']!;
          List<Map<String, dynamic>> kataJambiResults = results['kata_jambi']!;

          return ListView(
            padding:
                const EdgeInsets.only(top: 8, right: 25, left: 25, bottom: 40),
            children: [
              if (kataJambiResults.isNotEmpty) ...[
                ...kataJambiResults.map((item) {
                  return RichText(
                    text: TextSpan(
                      style: GoogleFonts.notoSans(color: Colors.black),
                      children: [
                        TextSpan(
                          text: '${item['kata_jambi'] ?? ''}»  ',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(153, 51, 65, 1),
                            fontSize: 18,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailKata3Page(),
                                  settings: RouteSettings(
                                    arguments: item,
                                  ),
                                ),
                              );
                            },
                        ),
                        TextSpan(
                            text: '${item['penggal_tk'] ?? ''}',
                            style: GoogleFonts.notoSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                        TextSpan(
                          text: '${item['cara_baca_tk'] ?? ''} ',
                          style: GoogleFonts.notoSans(
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  );
                }).toList(),
              ],

              // Kata intinya
              if (kataJambiResults.isEmpty) ...[
                RichText(
                  text: TextSpan(
                    style:
                        GoogleFonts.notoSans(fontSize: 24, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '${detail?.penggal} ',
                        style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '${detail?.cara_baca} ',
                      ),
                      TextSpan(
                          text: '${detail?.penggal2} ',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],

              const SizedBox(height: 8.0),

              //Informasi dasar
              RichText(
                text: TextSpan(
                  style:
                      GoogleFonts.notoSans(fontSize: 16, color: Colors.black),
                  children: [
                    if (detail?.kelas_kata != null &&
                        detail?.kelas_kata.isNotEmpty) ...[
                      TextSpan(
                        text: '${detail?.kelas_kata} ',
                        style: GoogleFonts.notoSans(color: Colors.red),
                      ),
                    ],
                    if (detail?.ragam != null && detail?.ragam.isNotEmpty) ...[
                      TextSpan(
                        text: '${detail?.ragam} ',
                        style: GoogleFonts.notoSans(color: Colors.red),
                      ),
                    ],
                    TextSpan(
                      text: '${detail?.arti} ',
                    ),
                    TextSpan(
                        text: '${detail?.contoh}',
                        style:
                            GoogleFonts.notoSans(fontStyle: FontStyle.italic)),
                    TextSpan(
                      text: '${detail?.arti_cth}',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 8.0),
              if (turunanMaknaResults.isNotEmpty) ...[
                const Divider(thickness: 2, height: 20),
                // Daftar turunan makna
                ...turunanMaknaResults.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.notoSans(
                            fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text: '${item['no_tm'] ?? ''}',
                          ),
                          TextSpan(
                            text: '${item['kelas_kata_tm'] ?? ''} ',
                            style: GoogleFonts.notoSans(color: Colors.red),
                          ),
                          TextSpan(
                            text: '${item['ragam_tm'] ?? ''}',
                            style: GoogleFonts.notoSans(color: Colors.red),
                          ),
                          TextSpan(
                            text: '${item['arti_tm'] ?? ''}',
                          ),
                          TextSpan(
                              text: '${item['cth_tm'] ?? ''}',
                              style: GoogleFonts.notoSans(
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                            text: '${item['arti_cth_tm'] ?? ''}',
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  );
                }).toList(),
              ],

              if (kataJambiKtResults.isNotEmpty) ...[
                const Divider(thickness: 2, height: 20),
                Text(
                  'Kata Turunan:',
                  style:
                      GoogleFonts.notoSans(fontSize: 16, color: Colors.black),
                ),

                // Daftar turunan_kata kata turunan
                Wrap(
                  spacing: 8.0, // Jarak horizontal antara item
                  runSpacing: 4.0, // Jarak vertikal antara baris
                  children: kataJambiKtResults.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailKata2Page(),
                            settings: RouteSettings(
                              arguments: item,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        item['kata_jambi_tk'].toString() + ';',
                        style: GoogleFonts.notoSans(
                            color: Colors.blueAccent, fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
              ],

              if (kataJambiGkResults.isNotEmpty) ...[
                const Divider(thickness: 2, height: 20),
                Text(
                  'Gabungan Kata:',
                  style:
                      GoogleFonts.notoSans(fontSize: 16, color: Colors.black),
                ),

                // Daftar turunan_kata gabungan kata
                Wrap(
                  spacing: 8.0, // Jarak horizontal antara item
                  runSpacing: 4.0, // Jarak vertikal antara baris
                  children: kataJambiGkResults.map((item) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailKata2Page(),
                            settings: RouteSettings(
                              arguments: item,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        item['kata_jambi_tk'].toString() + ';',
                        style: GoogleFonts.notoSans(
                            color: Colors.blueAccent, fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
              ],

              // Daftar homonim
              ...homonimResults.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.notoSans(
                              fontSize: 24, color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${item['penggal_hmn'] ?? ''} ',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '${item['cara_baca_hmn'] ?? ''} ',
                            ),
                            TextSpan(
                              text: '${item['penggal2_hmn'] ?? ''}',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 8.0),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.notoSans(
                              fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${item['kelas_kata_hmn'] ?? ''} ',
                              style: GoogleFonts.notoSans(color: Colors.red),
                            ),
                            TextSpan(
                              text: '${item['ragam_hmn'] ?? ''}',
                              style: GoogleFonts.notoSans(color: Colors.red),
                            ),
                            TextSpan(
                              text: '${item['arti_hmn'] ?? ''}',
                            ),
                            TextSpan(
                              text: '${item['contoh_hmn'] ?? ''}',
                              style: GoogleFonts.notoSans(
                                  fontStyle: FontStyle.italic),
                            ),
                            TextSpan(
                              text: '${item['arti_cth_hmn'] ?? ''}',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      FutureBuilder<List<Map<String, dynamic>>>(
                        future: DBProvider.db
                            .getTurunanMaknaByIdHmn(item['id_hmn']),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return const SizedBox(); // Kosong jika tidak ada data
                          }

                          final turunanMaknaResults = snapshot.data!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(
                                  thickness: 2, height: 20), // Divider di awal
                              // Data turunan makna
                              ...turunanMaknaResults.map((maknaItem) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16, color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: '${maknaItem['no_tm'] ?? ''}',
                                        ),
                                        TextSpan(
                                          text:
                                              '${maknaItem['kelas_kata_tm'] ?? ''} ',
                                          style: GoogleFonts.notoSans(
                                              color: Colors.red),
                                        ),
                                        TextSpan(
                                          text:
                                              '${maknaItem['ragam_tm'] ?? ''}',
                                          style: GoogleFonts.notoSans(
                                              color: Colors.red),
                                        ),
                                        TextSpan(
                                          text: '${maknaItem['arti_tm'] ?? ''}',
                                        ),
                                        TextSpan(
                                          text: '${maknaItem['cth_tm'] ?? ''}',
                                          style: GoogleFonts.notoSans(
                                              fontStyle: FontStyle.italic),
                                        ),
                                        TextSpan(
                                          text:
                                              '${maknaItem['arti_cth_tm'] ?? ''}',
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                );
                              }).toList(),
                            ],
                          );
                        },
                      ),
                      FutureBuilder<List<Map<String, dynamic>>>(
                        future: DBProvider.db
                            .getTurunanKataKTByIdHmn(item['id_hmn']),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return const SizedBox(); // Kosong jika tidak ada data
                          }

                          final turunanKataKtResults = snapshot.data!;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(thickness: 2, height: 20),
                              Text(
                                'Kata Turunan:',
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, color: Colors.black),
                              ),
                              Wrap(
                                spacing: 8.0, // Jarak horizontal antar item
                                runSpacing:
                                    4.0, // Jarak vertikal jika item melanjutkan ke baris berikutnya
                                children: turunanKataKtResults.map((item) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailKata2Page(),
                                          settings: RouteSettings(
                                            arguments: item,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      item['kata_jambi_tk'].toString() + ';',
                                      style: GoogleFonts.notoSans(
                                          color: Colors.blueAccent,
                                          fontSize: 16),
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          );
                        },
                      ),
                      FutureBuilder<List<Map<String, dynamic>>>(
                        future: DBProvider.db
                            .getTurunanKataGKByIdHmn(item['id_hmn']),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (!snapshot.hasData ||
                              snapshot.data!.isEmpty) {
                            return const SizedBox(); // Kosong jika tidak ada data
                          }

                          final turunanKataGtResults = snapshot.data!;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Divider(thickness: 2, height: 20),
                              Text(
                                'Gabungan Kata:',
                                style: GoogleFonts.notoSans(
                                    fontSize: 16, color: Colors.black),
                              ),
                              Wrap(
                                spacing: 8.0, // Jarak horizontal antar item
                                runSpacing:
                                    4.0, // Jarak vertikal jika item melanjutkan ke baris berikutnya
                                children: turunanKataGtResults.map((item) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DetailKata2Page(),
                                          settings: RouteSettings(
                                            arguments: item,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      item['kata_jambi_tk'].toString() + ';',
                                      style: GoogleFonts.notoSans(
                                          color: Colors.blueAccent,
                                          fontSize: 16),
                                    ),
                                  );
                                }).toList(),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          );
        },
      ),
    );
  }
}
