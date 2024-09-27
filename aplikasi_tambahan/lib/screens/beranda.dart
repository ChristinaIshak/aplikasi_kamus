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
            margin: const EdgeInsets.only(top: 5, bottom: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 24, right: 24, top: 42),
                      width: MediaQuery.of(context).size.width -
                          48, // Lebar layar dikurangi margin kiri dan kanan (24 + 24)
                      height: 90,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(153, 51, 65, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            right:
                                14, // Menempatkan gambar di ujung kanan container
                            child: Image.asset(
                              'assets/img/Up-Icon.png',
                              width: 127,
                              height:
                                  127, // Ukuran gambar tetap lebih besar dari container
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child: Text(
                                'Temukan kata\nyang kamu inginkan',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 24, right: 24),
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
                  mainAxisAlignment: MainAxisAlignment
                      .spaceEvenly, // Menjaga jarak rata antara semua item
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const KelasKata()),
                              );
                            },
                            child: Image.asset('assets/img/kelas_kata.png'),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Kelas Kata',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Ragam()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/talk.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Ragam',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Alfabet()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/FT-CaraBaca.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Pelafalan',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Ejaan()),
                              );
                            },
                            child: Image.asset(
                              'assets/img/search.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            'Ortografi',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  child: Text(
                    'Fitur Tambahan',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                // Fitur Tambahan untuk percakapan
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Percakapan()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width -
                              48, // Lebar responsif dikurangi margin 24px di setiap sisi
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: const EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin: const EdgeInsets.only(
                                    left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/counseling.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Percakapan',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          'Tersedia rekaman suara dari penutur asli bahasa Melayu dialek Jambi Seberang',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                      )),
                                                ],
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),
                // Fitur Tambahan untuk Seloko
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Seloko()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width -
                              48, // Lebar responsif dikurangi margin 24px di setiap sisi
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: const EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin: const EdgeInsets.only(
                                    left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/poem.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Seloko',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          'Tersedia rekaman suara dari ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                      )),
                                                  TextSpan(
                                                    text: ' seloko',
                                                    style: GoogleFonts.poppins(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          ' yang biasa digunakan dalam acara pernikahan.',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                      )),
                                                ],
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Fitur Tambahan untuk Budaya
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Budaya()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 48,
                          height: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(251, 182, 175, 1))),
                          child: Row(
                            children: [
                              Container(
                                width: 71,
                                height: 84,
                                padding: const EdgeInsets.only(
                                    top: 19.5,
                                    bottom: 19.5,
                                    right: 15,
                                    left: 15),
                                margin: const EdgeInsets.only(
                                    left: 8, top: 9, bottom: 9),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  'assets/img/batik.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(top: 11),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Budaya',
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 5, right: 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          'Terdapat informasi mengenai budaya Jambi Seberang mulai dari sejarah sampai wisata.',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: 12,
                                                      )),
                                                ],
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
