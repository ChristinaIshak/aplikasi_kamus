import 'package:aplikasi_tambahan/detail_permainan/campur.dart';
import 'package:aplikasi_tambahan/detail_permainan/makna.dart';
import 'package:aplikasi_tambahan/detail_permainan/melayu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Permainan extends StatefulWidget {
  const Permainan({super.key});

  @override
  State<Permainan> createState() => _PermainanState();
}

class _PermainanState extends State<Permainan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(
                Icons.videogame_asset,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Permainan',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 24, right: 24, top: 42),
                      width: 342,
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
                                  0, // Posisi gambar sejajar dengan garis bawah container
                              left: 0,
                              right: 14,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'assets/img/game-pad.png',
                                  width: 175,
                                  height:
                                      119, // Ukuran gambar yang lebih besar dari container
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23), // Jarak teks dari tepi container
                              child: Text(
                                'Ayo, bermain\nsambil belajar!',
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
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    'Pilih Permainan',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // Pilihan Permaianan
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Melayu()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 114,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 76,
                                height: 96,
                                //padding: EdgeInsets.all(13),
                                margin: EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/quizzes.png',
                                  height: 76,
                                  width: 76,
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Tebak Kata Bahasa Melayu',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pertanyaan akan diberikan dalam bahasa',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'Melayu Jambi dialek Seberang dan',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'Anda akan diberikan tiga pilihan.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 9,
                                            ),
                                            Text(
                                              '10 Pertanyaan',
                                              style: GoogleFonts.poppins(
                                                  color: Color.fromRGBO(
                                                      153, 51, 65, 1),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600),
                                            ),
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
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Makna()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 114,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 76,
                                height: 96,
                                margin: EdgeInsets.only(left: 8),
                                padding: EdgeInsets.only(left: 12, right: 12),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/quiz.png',
                                  height: 51,
                                  width: 51,
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Tebak Makna Bahasa Indonesia',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pertanyaan akan diberikan dalam bahasa',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'Indonesia dan Anda akan diberikan tiga ',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'pilihan.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 9,
                                            ),
                                            Text(
                                              '10 Pertanyaan',
                                              style: GoogleFonts.poppins(
                                                  color: Color.fromRGBO(
                                                      153, 51, 65, 1),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600),
                                            ),
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
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Campur()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 76,
                                height: 110,
                                //padding: EdgeInsets.all(13),
                                margin: EdgeInsets.only(left: 8),
                                padding: EdgeInsets.only(left: 12, right: 12),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/question.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                margin: EdgeInsets.only(top: 13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Tebak Kata Campuran',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 1),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pertanyaan akan diberikan dalam bahasa ',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'Indonesia dan Melayu Jambi dialek Jambi ',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'Seberang dan Anda akan diberikan tiga',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            Text(
                                              'pilihan.',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 9,
                                            ),
                                            Text(
                                              '10 Pertanyaan',
                                              style: GoogleFonts.poppins(
                                                  color: Color.fromRGBO(
                                                      153, 51, 65, 1),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600),
                                            ),
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
