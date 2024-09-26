import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SayyidIdrus extends StatefulWidget {
  const SayyidIdrus({super.key});

  @override
  State<SayyidIdrus> createState() => _SayyidIdrusState();
}

class _SayyidIdrusState extends State<SayyidIdrus> {
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
                  child: Image.asset('assets/img/foto1.jpg'),
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
                        'Sayyid Idrus bin Hasan Aljufri',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pangeran Wirokusumo merupakan tokoh penting dalam penyebaran agama Islam di wilayah Kota Seberang, Jambi. Salah satu warisannya yang signifikan adalah Rumah Batu Olak Kemang, yang berfungsi sebagai pusat kegiatan keagamaan dan tempat belajar bagi masyarakat sekitar. Nama "Rumah Batu" berasal dari kenyataan bahwa bangunan ini merupakan salah satu rumah pertama di daerah tersebut yang dibangun dengan bahan batu, sedangkan rumah-rumah lainnya masih menggunakan material kayu.',
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
                        'Sebagai salah satu penyebar Islam terkenal di Kota Seberang Jambi, Pangeran Wirokusumo berperan besar dalam menanamkan tradisi Islam di wilayah tersebut, yang juga menjadi salah satu pondasi berdirinya Kesultanan Jambi. Rumah Batu berperan penting dalam penyebaran agama Islam di Provinsi Jambi, berfungsi sebagai tempat belajar dan pusat syiar agama oleh para tokoh agama, termasuk Pangeran Wirokusumo sendiri.',
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
                        'Selain itu, Pangeran Wirokusumo mendirikan Masjid Al-Ikhsaniyah pada tahun 1880, yang merupakan masjid tertua di Desa Olak Kemang. Selama hidupnya, Pangeran Wirokusumo memberikan kontribusi yang besar dalam perkembangan Islam di Provinsi Jambi. Sebagai pemimpin dalam proses islamisasi masyarakat Jambi, beliau tidak hanya berhasil memperkenalkan agama Islam kepada penduduk lokal, tetapi juga berperan dalam membangun serta menjaga keistanaan Jambi, meskipun wilayah tersebut pada saat itu berada di bawah kendali Belanda.',
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
                                  'Siregar, I., Niswari, A, N., Sinurat, Y, J,. Supian, & Agustiningsih, S. (2024). Islamisasi di Jambi Oleh Pangeran Wirokusumo (1860 - 1902). HISTORIA: Jurnal Pendidik dan Peneliti Sejarah, 7(1), 1-8. https://doi.org/10.17509/historia.v7i1.57136',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text:
                                  'Febriani, & Seprina, R. (2022). Pemanfaatan Cagar Budaya Rumah Batu Olak Kemang di Jambi Kota Sebrang Sebagai Sumber Belajar Bagi Mahasiswa Pendidikan Sejarah Universitas Jambi, Vol. 3 No. 1.  https://doi.org/10.22437/krinok.v1i2.18551',
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
