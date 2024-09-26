import 'package:aplikasi_tambahan/fitur_tambahan/budaya.dart';
import 'package:aplikasi_tambahan/fitur_tambahan/percakapan.dart';
import 'package:aplikasi_tambahan/fitur_tambahan/seloko.dart';
import 'package:aplikasi_tambahan/informasi_tambahan/alfabet.dart';
import 'package:aplikasi_tambahan/informasi_tambahan/ejaan.dart';
import 'package:aplikasi_tambahan/informasi_tambahan/kelas_kata.dart';
import 'package:aplikasi_tambahan/informasi_tambahan/ragam.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.home,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Beranda',
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
                      //width: 342,
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
                                  'assets/img/Up-Icon.png',
                                  width: 127,
                                  height:
                                      127, // Ukuran gambar yang lebih besar dari container
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23), // Jarak teks dari tepi container
                              child: Text(
                                'Temukan kata\nyang kamu inginkan',
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
                    'Informasi Tambahan',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 33, top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KelasKata()),
                              );
                            },
                            child: Image.asset('assets/img/kelas_kata.png'),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Kelas Kata',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ragam()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/talk.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Ragam',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Alfabet()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/FT-CaraBaca.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Pelafalan',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 15, right: 24),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ejaan()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/search.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Ortografi',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
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
                    'Fitur Tambahan',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                // Fitur Tambahan untuk percakapan
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Percakapan()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin:
                                    EdgeInsets.only(left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/counseling.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                margin: EdgeInsets.only(top: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Percakapan',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Tersedia rekaman suara dari penutur',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'asli bahasa Melayu dialek Jambi ',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'Seberang.',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
                  height: 5,
                ),
                // Fitur Tambahan untuk Seloko
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Seloko()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin:
                                    EdgeInsets.only(left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/poem.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                margin: EdgeInsets.only(top: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Seloko',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.black),
                                              children: [
                                                TextSpan(
                                                    text:
                                                        'Tersedia rekaman suara dari ',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12,
                                                    )),
                                                TextSpan(
                                                  text: ' seloko',
                                                  style: GoogleFonts.poppins(
                                                    fontStyle: FontStyle.italic,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                          Text(
                                            'yang biasa digunakan dalam',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'acara pernikahan.',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
                  height: 5,
                ),
                // Fitur Tambahan untuk Budaya
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Budaya()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 24, right: 24),
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 360,
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin:
                                    EdgeInsets.only(left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/batik.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                margin: EdgeInsets.only(top: 11),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Budaya',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Terdapat informasi mengenai',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'budaya Jambi Seberang mulai dari',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            'sejarah sampai wisata.',
                                            style: GoogleFonts.poppins(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
            )),
      ),
    );
  }
}
