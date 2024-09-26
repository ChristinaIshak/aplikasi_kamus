import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WadahKue extends StatefulWidget {
  const WadahKue({super.key});

  @override
  State<WadahKue> createState() => _WadahKueState();
}

class _WadahKueState extends State<WadahKue> {
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
                  child: Image.asset('assets/img/wadah_kue.jpg'),
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
                        'Wadah Kue',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Teknik tata dan terawang motif bungo tanjung, daun kangkong, dan semut beriring merupakan salah satu warisan budaya khas yang berasal dari Seberang Kota Jambi. Motif-motif ini memiliki makna dan simbol tersendiri yang kerap digunakan sebagai hiasan pada wadah kue dalam acara-acara penting, seperti saat lamaran atau pinangan, menambah kesan elegan dan nilai tradisional yang kaya.',
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
                        'Selain digunakan dalam acara lamaran, wadah kue dengan motif khas ini juga sering dimanfaatkan pada hari-hari besar keagamaan sebagai bahan antaran. Wadah yang dihiasi motif bungo tanjung, daun kangkong, dan semut beriring ini tidak hanya sekadar berfungsi sebagai tempat makanan, tetapi juga melambangkan keindahan budaya dan tradisi masyarakat Seberang Kota Jambi.',
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
                                  'Museum Gentala Arasy, Jambi, Indonesia. “Wadah Kue”, diambil dari label keterangan pada kunjungan 13 Agustus 2024.',
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
