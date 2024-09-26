import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KelasKata extends StatefulWidget {
  const KelasKata({super.key});

  @override
  State<KelasKata> createState() => _KelasKataState();
}

class _KelasKataState extends State<KelasKata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Kelas Kata",
          style: TextStyle(color: Colors.black),
        )),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 5),
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
                                  'assets/img/classification.png',
                                  width: 120,
                                  height:
                                      120, // Ukuran gambar yang lebih besar dari container
                                ),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 23), // Jarak teks dari tepi container
                              child: Text(
                                'Pelajari lebih lanjut\nmengenai kelas kata!',
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
                        'Kelas Kata',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Label kelas kata ditulis setelah pelafalan, dicetak miring, dan dipakai dalam bentuk singkatan huruf sebagai berikut.',
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
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'a',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('adjektiva atau kata sifat.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'adv',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('adverbia atau kata keterangan.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'n',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('nomina atau kata benda.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'num',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('numeralia atau kata bilangan.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 75,
                        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'p',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                                'partikel, meliputi kata depan, kata sambung, dan kata seru.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'pron',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('pronomina atau kata ganti.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 360,
                        height: 56,
                        padding: EdgeInsets.only(left: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 183, 175, 1),
                            borderRadius: BorderRadius.circular(3)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'v',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text('verba atau kata kerja.',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
