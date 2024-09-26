import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RuangPengantin extends StatefulWidget {
  const RuangPengantin({super.key});

  @override
  State<RuangPengantin> createState() => _RuangPengantinState();
}

class _RuangPengantinState extends State<RuangPengantin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Budaya",
          style: TextStyle(color: Colors.black),
        )),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 5, bottom: 25),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 24, right: 24),
                  child: Image.asset('assets/img/ruang_pengantin.jpg'),
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
                        'Ruang Pengantin',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Ruang yang sangat rahasia bagi setiap individu adalah ruang kamar tidur karena, ruang ini seolah-olah ruang "tersembunyi" dan juga tempat menyimpan berbagai perlengkapan pribadi, mulai dari arsip hingga kekayaan berharga lainnya.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Perlengkapan di dalam ruang ini biasanya terdiri atas tempat tidur, lemari dan peti yang digunakan untuk menyimpan arsip pribadi dan pakaian. Tempat tidur masa lalu biasanya terbuat dari bambu dan kayu, yang diukir sesuai dengan keinginan pribadi. Setiap ruang rumah yang telah terisi lengkap terlihat indah dan serasi dengan perlengkapan perabot yang tertata.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Sumber:',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text:
                                  'Museum Gentala Arasy, Jambi, Indonesia. “Ruang Pengantin”, diambil dari label keterangan pada kunjungan 13 Agustus 2024.',
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
        ));
  }
}
