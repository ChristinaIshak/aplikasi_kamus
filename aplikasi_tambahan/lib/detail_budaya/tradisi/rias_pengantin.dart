import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiasPengantin extends StatefulWidget {
  const RiasPengantin({super.key});

  @override
  State<RiasPengantin> createState() => _RiasPengantinState();
}

class _RiasPengantinState extends State<RiasPengantin> {
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
                  child: Image.asset('assets/img/rias_pengantin.jpg'),
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
                        'Tata Rias Pengantin',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tata rias pengantin terdiri atas berbagai unsur yang menyatu untuk menciptakan kesatuan yang harmonis. Hubungan antara unsur-unsur itu, serta aspek-aspek bentuk dan filosofi yang melingkupinya, membentuk keseluruhan tata rias pengantin tersebut. Arti, simbol, dan fungsi yang diwakili oleh unsur-unsur ini menyatu dalam konsep yang ingin disampaikan selama acara pernikahan, sehingga menciptakan aura istimewa saat ditampilkan di depan umum.',
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
                        'Unsur-unsur pembentuk tata rias pengantin dapat dibagi menjadi tiga elemen utama: (1) tata rias wajah, (2) busana, dan (3) perhiasan. Setiap elemen ini memiliki corak dan aturan tertentu yang diatur berdasarkan selera, konsep, dan tradisi yang berlaku dalam masyarakat pada waktu tertentu. Hal itu menghasilkan perpaduan tata rias, tata busana, dan tata perhiasan yang khas.',
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
                        'Deskripsi tentang perlengkapan pengantin dalam ruang upacara pernikahan, seperti yang telah disebutkan, tidak selalu hadir dalam setiap acara. Perlengkapan pengantin dapat bervariasi dari satu acara ke acara lainnya.',
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
                        'Pengantin tidak selalu duduk di atas kursi; terkadang pelaminan dibentuk dari susunan dua hingga tiga lapisan kasur kecil. Namun, kasur ini bukanlah kasur pada umumnya, melainkan lapisan persegi yang diisi dengan potongan-potongan kain sisa. Bentuk pelaminan ini lebih sering ditemukan pada masa lalu ketika kursi belum banyak dikenal. Meskipun demikian, prinsip utama dari pelaminan adalah bahwa ia selalu dibuat lebih tinggi dari lantai, bahkan lebih tinggi daripada kursi para tamu.',
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
                                  'Museum Gentala Arasy, Jambi, Indonesia. “Tata Rias Pengantin”, diambil dari label keterangan pada kunjungan 13 Agustus 2024.',
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
