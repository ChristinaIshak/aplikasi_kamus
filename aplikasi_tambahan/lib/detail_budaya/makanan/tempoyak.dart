import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tempoyak extends StatefulWidget {
  const Tempoyak({super.key});

  @override
  State<Tempoyak> createState() => _TempoyakState();
}

class _TempoyakState extends State<Tempoyak> {
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
                  child: Image.asset('assets/img/tempoyak2.jpg'),
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
                        'Gulai Tempoyak Patin',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tempoyak adalah bahan makanan tradisional yang terbuat dari fermentasi buah durian. Makanan ini berasal dari Jambi dan biasanya dibuat saat musim durian tiba. Tempoyak dapat disimpan selama beberapa bulan asalkan disimpan dengan baik. Di Jambi, tempoyak digunakan untuk membuat berbagai hidangan, seperti gulai tempoyak, sambal tempoyak, dan brengkes. Rasa tempoyak dapat bervariasi tergantung pada jenis durian dan proses fermentasinya, serta memberikan cita rasa khas pada masakan. Di daerah Jambi, pohon durian banyak ditemukan, dan ketika musim durian tiba, sebagian buahnya dijual, sementara sebagian lainnya diolah menjadi makanan seperti tempoyak.',
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
                        'Tempoyak merupakan salah satu makanan tradisional khas Jambi yang sering digunakan sebagai penyedap dalam hidangan gulai atau dimakan langsung dengan nasi dan lauk lainnya. Makanan ini dapat dinikmati oleh berbagai lapisan masyarakat Jambi. Pembuatan tempoyak dimulai dengan mengupas durian dan mengambil daging buahnya, kemudian daging durian dicampur dengan sedikit garam dan disimpan dalam guci yang tertutup rapat selama 7 hari. Setelah proses fermentasi, tempoyak siap digunakan sebagai bahan tambahan dalam berbagai hidangan, dikenal sebagai "gagan tempoyak" oleh masyarakat Jambi. Tempoyak dapat disimpan untuk waktu yang lama jika dijaga agar tetap rapat dan sering diaduk untuk mencegah permukaannya mengering.',
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
                        'Salah satu masakan khas Jambi yang menggunakan tempoyak adalah gulai tempoyak patin. Hidangan ini menggunakan ikan patin sebagai bahan utama dan dicampur dengan tempoyak untuk memberikan rasa khas. Gulai ini merupakan sajian sehari-hari di Jambi, terutama di Kota Seberang, dan biasanya dinikmati hanya dengan nasi tanpa lauk tambahan lainnya.',
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
                        'Resep Gulai Tempoyak Patin',
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
                        'Bahan dan Bumbu',
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
                                "1 kg ikan patin, dibersihkan dan dipotong-potong",
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
                                "50 gram tempoyak",
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
                                "1 batang serai, digeprek",
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
                                "40-50 gram gula pasir (sesuai selera)",
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
                                "800 ml air",
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
                                "2 siung bawang putih, dihaluskan",
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
                                "5 siung bawang merah, dihaluskan",
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
                                "50-60 gram cabai rawit hijau/merah, dihaluskan",
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
                                "30 gram kunyit, dihaluskan",
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
                                "Garam secukupnya",
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
                              'Campurkan tempoyak dengan bumbu halus dan gula, lalu aduk rata.',
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
                              'Masukkan air ke dalam wajan, tambahkan campuran bumbu dan tempoyak, serta serai yang telah digeprek. Didihkan campuran ini.',
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
                              'Setelah air mendidih, masukkan potongan ikan patin dan aduk perlahan agar ikan terendam kuah. Masak hingga ikan matang dan kuah mengental.',
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
                              'Gulai tempoyak patin siap disajikan sebagai hidangan lezat yang unik dengan cita rasa khas fermentasi durian.',
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
                                  'Warisan Budaya Takbenda Indonesia. Diakses pada 07 September 2024 dari https://warisanbudaya.kemdikbud.go.id/?pencatatan&&list&vieww=per10&limitto&keywords=TEMPOYAK&location=Jambi',
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
