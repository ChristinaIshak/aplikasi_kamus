import 'package:aplikasi_tambahan/penting/db_provider.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_tambahan/penting/kamus_api_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class PencarianPage extends StatefulWidget {
  const PencarianPage({Key? key}) : super(key: key);

  @override
  State<PencarianPage> createState() => _PencarianPageState();
}

class _PencarianPageState extends State<PencarianPage> {
  final _searchController = TextEditingController();
  String textFrom = "Jambi";
  String textTo = "Indonesia";

  var wordListView;

  void _syncData() async {
    await KamusApiProvider().getAllWords();
    _showSyncCompleteDialog();
  }

  void _showSyncCompleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sinkronisasi Selesai'),
          content:
              const Text('Database berhasil disinkronkan dengan Supabase.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _searchController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.book,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Kosa Kata',
              style: GoogleFonts.notoSans(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.sync,
            ),
            onPressed: _syncData,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 18),
                width: 355,
                height: 35,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(153, 51, 65, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          textFrom,
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (textFrom == "Jambi") {
                                  textFrom = "Indonesia";
                                  textTo = "Jambi";
                                } else {
                                  textFrom = "Jambi";
                                  textTo = "Indonesia";
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.compare_arrows,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          textTo,
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 355,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color:
                      Color.fromRGBO(153, 51, 65, 1), // Warna garis tepi merah
                  width: 1, // Lebar garis tepi
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {
                          setState(() {
                            wordListView = _buildWordListView();
                          });
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Masukkan Kata...',
                          hintStyle: GoogleFonts.notoSans(
                            color: Color.fromRGBO(
                                153, 51, 65, 1), // Warna teks hint
                            fontSize: 16, // Ukuran teks hint
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Color.fromRGBO(153, 51, 65, 1)),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 170, top: 15),
              child: Text(
                'Hasil pencarian : 7400 kata',
                style: GoogleFonts.notoSans(fontSize: 14.0),
              ),
            ),
            Expanded(child: _buildWordListView()),
          ],
        ),
      ),
    );
  }

  _buildWordListView() {
    return FutureBuilder(
      future: DBProvider.db.getWord(_searchController.text, textFrom),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              final row = snapshot.data[index];
              String displayClass2 = '';
              String displayText = '';
              String displayClass = '';
              String displayStyle = '';
              String displayMeaning = '';

              // Kondisi 1: Jika arti tidak null
              if (row.arti != null && row.arti.isNotEmpty) {
                if (row.kelas_kata != null && row.ragam == null) {
                  displayClass = row.kelas_kata;
                  displayMeaning = row.arti;
                } else if (row.kelas_kata == null && row.ragam != null) {
                  displayStyle = row.ragam;
                  displayMeaning = row.arti;
                } else if (row.kelas_kata != null && row.ragam != null) {
                  displayClass = row.kelas_kata;
                  displayStyle = row.ragam;
                  displayMeaning = row.arti;
                } else {
                  displayMeaning = row.arti;
                }
              }
              // Kondisi 2: Jika arti null
              else if (row.arti == null || row.arti.isEmpty) {
                displayClass2 = row.kelas_kata;
                displayText = row.no_tm;
                displayClass = row.kelas_kata_tm;
                displayStyle = row.ragam_tm;
                displayMeaning = row.arti_tm;
              }

              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/detailkata',
                    arguments: snapshot.data[index],
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(
                          153, 51, 65, 1), // Warna garis tepi merah
                      width: 1, // Lebar garis tepi
                    ),
                    borderRadius:
                        BorderRadius.circular(10), // Radius sudut border
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${row.penggal ?? ""}${row.cara_baca ?? ""}${row.pemerian ?? ""}',
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(153, 51, 65, 1),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        RichText(
                          text: TextSpan(
                            style: GoogleFonts.notoSans(
                                fontSize: 16, color: Colors.black),
                            children: [
                              if (displayClass2.isNotEmpty)
                                TextSpan(
                                  text: displayClass2,
                                  style: GoogleFonts.notoSans(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              if (displayText.isNotEmpty)
                                TextSpan(
                                  text: ' $displayText',
                                ),
                              if (displayClass.isNotEmpty)
                                TextSpan(
                                  text: displayClass,
                                  style: GoogleFonts.notoSans(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              if (displayStyle.isNotEmpty)
                                TextSpan(
                                  text: ' $displayStyle',
                                  style: GoogleFonts.notoSans(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              if (displayMeaning.isNotEmpty)
                                TextSpan(
                                  text: ' $displayMeaning',
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
