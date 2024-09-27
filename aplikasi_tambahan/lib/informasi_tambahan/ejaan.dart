import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ejaan extends StatefulWidget {
  const Ejaan({super.key});

  @override
  State<Ejaan> createState() => _EjaanState();
}

class _EjaanState extends State<Ejaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Ortografi",
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
                                  13, // Posisi gambar sejajar dengan garis bawah container
                              left: 0,
                              right: 12,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Image.asset(
                                  'assets/img/search.png',
                                  width: 100,
                                  height:
                                      100, // Ukuran gambar yang lebih besar dari container
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23), // Jarak teks dari tepi container
                              child: Text(
                                'Pelajari Lebih Lanjut\nMengenai Ejaan Kamus',
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
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Garis Hubung Satu (-)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Garis hubung satu dipakai untuk menghubungkan kata dalam bentuk perulangan kata.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 60,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'bu.dak-bu.dak',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' anak-anak',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tanda Hubung (--)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tanda hubung dipakai untuk menggantikan lema dalam contoh pemakaian.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'pa.sih',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' /pasɨh/',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'a',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' fasih:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' budak tu -- nian becakap bahaso Arab',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' anak itu fasih sekali berbahasa Arab',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tilde (~)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tilde dipakai untuk menggantikan sublema yang terdapat di dalam contoh pemakaian.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 120,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ber.en.jot',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'v',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' terguncang-guncang:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' mubil kami ~ selamo nempuh di jalan buruk tu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' anak mobil kami terguncang-guncang selma menempuh jalan buruk itu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Huruf Miring',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Huruf miring dipakai untuk menuliskan label dan kalimat contoh pemakaian lema, serta penulisan peribahasa.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'en.tong',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' /èntong/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'a',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' lamban:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' -- nian gawe budak tu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' lamban sekali kerja anak itu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Huruf Tebal',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Huruf tebal menunjukkan lema, sublema, angka homonim, dan angka polisem.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 180,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ga.duh(1)',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' /gadʊh/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'a',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' gaduh; ribut:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' -- nian budak budak tu bemain ',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' gaduh sekali anak-anak itu bermain;',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Text(""),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ga.duh(2)',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' /gadʊh/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'a',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' gelisah; risau:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' -- nian diok nengar kabar tu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' risau sekali dia mendengar kabar itu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tanda Titik (.)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tanda titik di tengah dipakai untuk memenggal suku kata pada lema dengan ketentuan sebagai berikut.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Suku kata yang memiliki satu huruf vokal yang",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "terdapat pada awal atau akhir lema pokok, seperti",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "asam, aseli, uban, dan doa tidak dipenggal dan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "penulisannya adalah sebagai berikut.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 100,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'asam',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'a.sam',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'aseli',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'a.se.li',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'uban',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'u.ban',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'doa',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'do.a',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Akhiran ',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    TextSpan(
                                        text: '-i,',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                      text: ' seperti pada ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'ngatas',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                        text: 'i,',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                        text: ' nyerumus',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                        text: 'i,',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                      text: ' dan',
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12, color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: ' nyatuh',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                        text: 'i,',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(
                                      text:
                                          ' tidak dipenggal dan penulisannya adalah',
                                      style: GoogleFonts.poppins(),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "sebagai berikut.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'nga.tasi',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'nga.tas.i',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'nye.ru.musi',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'nye.ru.mus.i',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'nya.tuhi',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' bukan ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: 'nya.tuh.i',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              " ",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hal itu dilakukan agar tidak terdapat satu huruf di ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "awal atau di akhir baris. Akan tetapi, itu tidak",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "berlaku pada sublema yang berawalan atau ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "berakhiran yang terdiri atas lebih dari satu huruf,",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "seperti pada ngarahkan, penyesalan, dan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "kenabian. Pemenggalan kata tersebut adalah",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "sebagai berikut.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'nga.rah.kan',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'pe.nye.les.an',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ke.na.bi.an',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kata-kata yang mengandung satu bunyi vokal di",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.notoSans(
                                      fontSize: 12, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'tengah, seperti ',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    TextSpan(
                                        text: 'juaro, kuaso, ',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                    TextSpan(
                                      text: 'dan',
                                      style: GoogleFonts.poppins(),
                                    ),
                                    TextSpan(
                                        text: ' piatu',
                                        style: GoogleFonts.poppins(
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Text(
                                "pemenggalannya adalah sebagai berikut.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 80,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ju.a.ro',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ku.a.so',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'pi.at.u',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tanda Koma (,)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tanda koma dipakai untuk memisahkan lema dan label kelas kata yang tidak diberi deskripsi serta menandai bagian-bagian pemerian sebagai pilihan bentuk kata.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 120,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ge.le.gak',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' /gadʊh/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ', nge.legak',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'v',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' mendidih; menggelegak',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Text(""),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'tu.mal,',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: ' te.tu.mal ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'v',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text:
                                        ' jatuh dgn bagian kepala terlebih dahulu',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Titik Koma (;)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Titik koma dipakai:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "untuk memisahkan bentuk-bentuk kata yang",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "bermakna sama atau hampir sama (sinonim)",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "yang terdapat pada deskripsi kata;",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "sebagai penanda akhir deskripsi makna sebuah ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "sublema yang masih belum merupakan bentuk",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "derivasi terakhir (deskripsi makna sublema yang",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "merupakan bentuk derivasi terakhir sebuah lema",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "tidak diakhiri dengan tanda apapun);",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "sebagai penanda akhir deskripsi makna polisemi.",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 160,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'be.dil ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: '/bêdɨl/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' bedil; senapan;pistol;',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Text(""),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'sim.bat',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' sahut:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' kalu diok nyeru cubo -- keras-keras',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  TextSpan(
                                    text:
                                        ' kalau dia memanggil coba sahut keras-keras;',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Titik Dua (:)',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Titik dua dipakai untuk memisahkan kalimat contoh dari deskripsi.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 100,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'sok ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                      text: '/so?/',
                                      style: const TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'v',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' tuang:',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' kalu sudah ngelegak, -- be aek tu ke cerek',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' kalau sudah menggelegak tuang saja air itu ke cerek',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Angka Arab',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Angka Arab cetak tebal dipakai untuk menandai ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "makna polisemi (yaitu arti pertama, kedua, dan ",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "seterusnya).",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 60,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ju.a.ro ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' 1',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' juara;',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 2',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' jawara; preman',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "•",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Angka Arab di dalam kurung dibuat cetak tebal",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "dan dipakai untuk menandai bentuk homonim",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "yang homograf dan homofon (diletakkan di depan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "lema yang memiliki bentuk homonim).",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Contoh:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 48,
                        height: 110,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ka.jang(1) ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' ukuran lembar kertas karton',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'ka.jang(2) ',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'n',
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                      )),
                                  TextSpan(
                                    text: ' kajang',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
