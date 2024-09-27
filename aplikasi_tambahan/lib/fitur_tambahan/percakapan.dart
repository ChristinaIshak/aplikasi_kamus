import 'package:aplikasi_tambahan/detail_percakapan/dialogPage.dart';
import 'package:aplikasi_tambahan/detail_percakapan/dongeng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Percakapan extends StatefulWidget {
  const Percakapan({super.key});

  @override
  State<Percakapan> createState() => _PercakapanState();
}

class _PercakapanState extends State<Percakapan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Percakapan",
          style: TextStyle(color: Colors.black),
        )),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 5, bottom: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 24, right: 24, top: 42),
                      width: MediaQuery.of(context).size.width - 48,
                      height: 90,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(153, 51, 65, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                              bottom:
                                  -5, // Posisi gambar sejajar dengan garis bawah container
                              left: 0,
                              right: 14,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'assets/img/counseling.png',
                                  width: 146,
                                  height:
                                      146, // Ukuran gambar yang lebih besar dari container
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23), // Jarak teks dari tepi container
                              child: Text(
                                'Dengarkan\nrekaman yang\ntersedia!',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DialogPage()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 48,
                          height: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              SizedBox(width: 25),
                              Container(
                                margin: EdgeInsets.only(top: 13, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Percakapan Antara Dua Orang',
                                      style: GoogleFonts.poppins(
                                          color: Color.fromRGBO(153, 51, 65, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Percakapan berisi dua orang yang menggunakan',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'bahasa Melayu dialek Jambi Seberang. Percakapan ',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'tersebut dilengkapi dengan terjemahan bahasa',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        Text(
                                          'Indonesia.',
                                          style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          width: 155,
                                          height: 25,
                                          padding: EdgeInsets.only(left: 9),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color.fromRGBO(
                                                  251, 182, 175, 1)),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Dengarkan Sekarang',
                                                style: GoogleFonts.poppins(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                size: 15.0,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dongeng()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 48,
                          height: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              SizedBox(width: 25),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Cerita Dongeng',
                                      style: GoogleFonts.poppins(
                                          color: Color.fromRGBO(153, 51, 65, 1),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bagian ini berisi seseorang yang menceritakan sesuatu',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'dalam bahasa Melayu dialek Jambi Seberang yang',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'disertai dengan terjemahan bahasa Indonesia.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              width: 155,
                                              height: 25,
                                              padding: EdgeInsets.only(left: 9),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Color.fromRGBO(
                                                      251, 182, 175, 1)),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Dengarkan Sekarang',
                                                    style: GoogleFonts.poppins(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    size: 15.0,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
