import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Baraqbah extends StatefulWidget {
  const Baraqbah({super.key});

  @override
  State<Baraqbah> createState() => _BaraqbahState();
}

class _BaraqbahState extends State<Baraqbah> {
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
                  child: Image.asset('assets/img/baraqbah.jpg'),
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
                        'Al-Habib bin Ahmad Barqbah',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Komunitas Arab mulai hadir di Jambi pada abad ke-18, yang dibuktikan dengan penemuan makam Ahmad Al-Habib Husin bin Ahmad Baraqbah (wafat pada tahun 1156 H/1743 M). Beliau adalah seorang ulama imigran yang awalnya tinggal di Palembang sebelum pindah ke Jambi, dan di sana ia diterima dengan baik oleh masyarakat Melayu di daerah Tahtul Yaman. Meskipun tidak banyak catatan tertulis mengenai kehidupannya, tradisi lisan masyarakat Jambi mengenalnya sebagai sosok penting dalam penyebaran Islam. Beliau juga diketahui tinggal di Kampung Pacinan, sebuah permukiman para pedagang Tionghoa.',
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
                        "Datuk Sintai memiliki seorang putri bernama Nyai Resik yang berasal dari keturunan Tionghoa. Seiring berjalannya waktu, Jambi menjadi salah satu jalur perdagangan penting. Di tengah pergerakan para pedagang, datanglah seorang pedagang sekaligus penyebar ajaran Islam dari Arab bernama Al-Habib Husin Al Baraqbah bin Ahmad Baraqbah. Al-Habib Husin tidak hanya berniat berdagang, tetapi juga membawa misi penyebaran agama Islam.",
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
                        'Untuk memperkuat proses penyebaran Islam di Jambi, Al-Habib Husin menikahi Nyai Resik. Pada saat itu, masyarakat Jambi telah mengenal Islam, namun tetapi masih dipengaruhi oleh ajaran Hindu-Buddha. Misi Al-Habib Husin adalah untuk memperkuat ajaran Islam di Jambi. Setelah tinggal selama dua dekade di sana, Al-Habib Husin dan Nyai Resik dikaruniai beberapa anak, salah satunya adalah anak ketiga yang bernama Khosyim bin Husin. Khosyim kemudian melanjutkan perjuangan ayahnya dalam menyempurnakan ajaran Islam di Jambi.',
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
                                  'Apdelmi. (2018). Islam dan Sejarahnya Pada Masyarakat Jambi Seberang. TSAQOFAH & TARIKH: JURNAL KEBUDAYAAN DAN SEJARAH ISLAM, Vol. 3 No. 1. http://dx.doi.org/10.29300/ttjksi.v3i1.1550',
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
                                  'Sari, R. A. (2018). Integrasi Orang-orang Keturunan Arab di Kesultanan Melayu Jambi Dalam Menghadapi Kolonial Belanda (1858-1904) [Tesis, UIN Syarif Hidayatullah]. Repositori UIN Syarif Hidayatullah. https://repository.uinjkt.ac.id/dspace/bitstream/123456789/74321/1/TS23002.pdf',
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
