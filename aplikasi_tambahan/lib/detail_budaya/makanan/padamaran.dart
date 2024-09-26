import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Padamaran extends StatefulWidget {
  const Padamaran({super.key});

  @override
  State<Padamaran> createState() => _PadamaranState();
}

class _PadamaranState extends State<Padamaran> {
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
                  child: Image.asset('assets/img/padamaran.jpg'),
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
                        'Padamaran',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Kue padamaran adalah kue tradisional khas Jambi yang terkenal dengan cita rasanya yang khas dan aromanya yang wangi. Kue ini terbuat dari tepung beras, santan, air perasan daun pandan sebagai pewarna dan pemberi aroma, serta gula merah. Rasanya yang manis dan gurih diperkuat dengan aroma pandan dan daun pisang yang digunakan sebagai wadahnya. Karena menggunakan santan dalam jumlah yang cukup banyak, kue ini cenderung mudah basi. Kue Padamaran biasanya dinikmati sebagai takjil atau kudapan setelah salat tarawih. ',
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
                        'Resep Padamaran',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Bahan-Bahan',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
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
                                "150 gram tepung beras",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
                                "750 ml santan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
                                "1 sendok teh pasta pandan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
                                "75 gram gula merah, disisir",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
                                "1/2 sendok teh garam",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
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
                                "Daun pisang secukupnya untuk takir",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Cara Membuat',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "1. ",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Campurkan tepung beras dengan santan encer dalam panci. Tambahkan garam dan pasta pandan secukupnya. Masak sambil terus diaduk hingga mengental dan berbentuk bubur. Matikan api ketika adonan bubur mendidih dan meletup-letup.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "2.",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Siapkan takir dari daun pisang berbentuk persegi ukuran 7 x 7 cm, dan sematkan lidi pada ujung-ujungnya agar takir tetap kokoh.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "3.",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Letakkan gula merah yang sudah disisir pada bagian dasar takir, kemudian tuangkan adonan bubur di atasnya.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "4.",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Panaskan dandang untuk mengukus. Susun takir yang berisi adonan ke dalam dandang dan kukus hingga matang.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "5.",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Angkat kue setelah matang dan biarkan dingin sebelum disajikan.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 5),
                            child: Text(
                              "6.",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Kue padamaran yang telah matang siap untuk dinikmati sebagai kudapan lezat yang menggugah selera dengan perpaduan rasa manis, gurih, dan aroma pandan yang memikat.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
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
                                  'Warisan Budaya Takbenda Indonesia. Diakses pada 07 September 2024 dari https://warisanbudaya.kemdikbud.go.id/?newdetail&detailCatat=1842',
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
