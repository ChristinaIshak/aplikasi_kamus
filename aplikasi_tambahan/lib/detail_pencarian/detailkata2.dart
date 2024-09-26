import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tambahan/detail_pencarian/detailkata3.dart';
import 'package:aplikasi_tambahan/penting/db_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailKata2Page extends StatelessWidget {
  const DetailKata2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? detail =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final String? kataJambiTk = detail?['kata_jambi_tk'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Kata"),
      ),
      body: FutureBuilder<Map<String, List<Map<String, dynamic>>>>(
        future: DBProvider.db.getAllKata(kataJambiTk),
        builder: (BuildContext context,
            AsyncSnapshot<Map<String, List<Map<String, dynamic>>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          // Hasil dari future query
          Map<String, List<Map<String, dynamic>>> results = snapshot.data!;
          List<Map<String, dynamic>> turunanKataResults =
              results['turunan_kata']!;
          List<Map<String, dynamic>> turunanMaknaResults =
              results['turunan_makna']!;

          final item =
              turunanKataResults.isNotEmpty ? turunanKataResults[0] : null;

          return item != null
              ? ListView(
                  padding: const EdgeInsets.only(
                      top: 8, right: 25, left: 25, bottom: 40),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.notoSans(
                              fontSize: 24, color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${item['kata_jambi'] ?? ''}»  ',
                              style: GoogleFonts.notoSans(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(153, 51, 65, 1),
                                  fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailKata3Page(),
                                      settings: RouteSettings(
                                        arguments: item,
                                      ),
                                    ),
                                  );
                                },
                            ),
                            TextSpan(
                              text: '${item['penggal_tk']}',
                              style: GoogleFonts.notoSans(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '${item['cara_baca_tk']}',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.notoSans(
                            fontSize: 16,
                            color: Colors.black,
                          ), // Default style
                          children: [
                            if (item['kelas_kata_tk'] != null &&
                                item['kelas_kata_tk'].isNotEmpty) ...[
                              TextSpan(
                                text: '${item['kelas_kata_tk']} ',
                                style: GoogleFonts.notoSans(
                                    color: Colors.red), // Style for ragam
                              ),
                            ],
                            if (item['ragam_tk'] != null &&
                                item['ragam_tk'].isNotEmpty) ...[
                              TextSpan(
                                text: '${item['ragam_tk']} ',
                                style: GoogleFonts.notoSans(
                                    color: Colors.red), // Style for ragam
                              ),
                            ],
                            TextSpan(
                              text: '${item['arti_tk']} ',
                              // Default style is inherited (black)
                            ),
                            TextSpan(
                                text: '${item['contoh_tk']}',
                                style: GoogleFonts.notoSans(
                                    fontStyle: FontStyle.italic)
                                // Default style is inherited (black)
                                ),
                            TextSpan(
                              text: '${item['arti_cth_tk']}',

                              // Default style is inherited (black)
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Tampilkan turunan_mkn dari kata
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
                                  style:
                                      GoogleFonts.notoSans(color: Colors.red),
                                ),
                                TextSpan(
                                  text: '${item['ragam_tm'] ?? ''}',
                                  style:
                                      GoogleFonts.notoSans(color: Colors.red),
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
                  ],
                )
              : const Center(child: Text('No data found'));
        },
      ),
    );
  }
}
