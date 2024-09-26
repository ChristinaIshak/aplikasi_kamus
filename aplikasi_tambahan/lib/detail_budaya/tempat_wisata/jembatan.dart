import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jembatan extends StatefulWidget {
  const Jembatan({super.key});

  @override
  State<Jembatan> createState() => _JembatanState();
}

class _JembatanState extends State<Jembatan> {
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
                  child: Image.asset('assets/img/gentala.jpg'),
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
                        'Jembatan Gentala Arasy',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jembatan Gentala Arasy adalah salah satu ikon arsitektur modern di Kota Jambi yang menjadi kebanggaan masyarakat setempat. Proyek pembangunan jembatan ini adalah bagian dari sebuah rencana besar yang dimulai pada tahun 2012 dan berlangsung selama tiga tahun hingga tahun 2014. Dengan total anggaran sekitar 88,7 miliar rupiah, proyek ini tidak hanya mencakup pembangunan jembatan itu sendiri tetapi juga melibatkan pembangunan Menara Gentala Arasy, sebuah menara yang menjadi simbol sejarah dan budaya di wilayah tersebut.',
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
                        'Jembatan ini memiliki fungsi utama sebagai jalur pedestrian yang menghubungkan dua kawasan penting di Kota Jambi, yakni Menara Gentala Arasy yang terletak di sisi barat Sungai Batanghari dan Tepian Tanggo Rajo di sisi timur sungai. Sungai Batanghari, sebagai sungai terbesar di Sumatra, memisahkan kedua kawasan ini, sehingga keberadaan jembatan menjadi sangat penting dalam meningkatkan aksesibilitas dan mempererat konektivitas antar wilayah.',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text:
                                  'Keberhasilan proyek pembangunan Jembatan Gentala Arasy menjadi salah satu pencapaian besar pada masa pemerintahan Gubernur Hasan Basri Agus. Proyek ini dirancang dengan sangat teliti untuk memastikan bahwa jembatan tidak hanya berfungsi sebagai infrastruktur penghubung tetapi juga sebagai tengara (',
                            ),
                            TextSpan(
                                text: 'landmark',
                                style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic)),
                            TextSpan(
                              text:
                                  ') kota yang indah dan menarik. Keberadaan jembatan ini diresmikan secara resmi oleh Wakil Presiden Indonesia saat itu, Jusuf Kalla, pada tanggal 28 Maret 2015. Peresmian ini menjadi momen bersejarah bagi Kota Jambi, karena jembatan ini tidak hanya menjadi simbol modernisasi, tetapi juga menjadi daya tarik wisata yang mendatangkan pengunjung dari berbagai daerah.',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 12),
                          children: [
                            TextSpan(
                              text:
                                  'Jembatan Gentala Arasy memiliki panjang 503 meter dan lebar 45 meter, yang menjadikannya salah satu jembatan terpanjang di wilayah ini. Desain jembatan yang berbentuk "S" ini sangat unik dan berbeda dari jembatan-jembatan konvensional lainnya. Bentuk "S" ini tidak hanya memberikan estetika yang menarik, tetapi juga mencerminkan dinamika aliran Sungai Batanghari di bawahnya. Karena bentuknya yang tidak lazim dan kompleksitas teknis yang tinggi, jembatan ini memerlukan penggunaan elemen material modern yang diimpor langsung dari Italia. Salah satu komponen utama yang didatangkan adalah kabel ',
                            ),
                            TextSpan(
                                text: 'stayed',
                                style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic)),
                            TextSpan(
                              text: ' (',
                            ),
                            TextSpan(
                                text: 'cable-stayed',
                                style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic)),
                            TextSpan(
                              text:
                                  '), yang merupakan komponen kunci dalam menjaga kestabilan dan kekuatan struktur jembatan.',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        'Jembatan Gentala Arasy memiliki panjang 503 meter dan lebar 45 meter, yang menjadikannya salah satu jembatan terpanjang di wilayah ini. Desain jembatan yang berbentuk "S" ini sangat unik dan berbeda dari jembatan-jembatan konvensional lainnya. Bentuk "S" ini tidak hanya memberikan estetika yang menarik tetapi juga mencerminkan dinamika aliran Sungai Batanghari di bawahnya. Karena bentuknya yang tidak lazim dan kompleksitas teknis yang tinggi, jembatan ini memerlukan penggunaan elemen material modern yang diimpor langsung dari Italia. Salah satu komponen utama yang didatangkan adalah kabel stayed, yang merupakan komponen kunci dalam menjaga kestabilan dan kekuatan struktur jembatan.',
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
                        'Selain itu, jembatan ini dirancang dengan mempertimbangkan kenyamanan dan keamanan pejalan kaki. Terdapat dua pintu masuk yang memungkinkan akses mudah dari kedua sisi sungai. Pintu masuk pertama terletak di belakang Menara Gentala Arasy, yang beralamat di Jalan KH. M. Ja’afar, Kelurahan Arab Melayu, Kecamatan Pelayangan, Kota Jambi. Pintu masuk kedua berada di Jalan Raden Pamuk, Kelurahan Kasang, Kecamatan Jambi Timur, Kota Jambi. Lokasi kedua pintu masuk ini memudahkan akses bagi warga dari berbagai bagian kota yang ingin menikmati pemandangan Sungai Batanghari atau sekadar berjalan-jalan di atas jembatan yang megah ini.',
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
                        'Secara keseluruhan, Jembatan Gentala Arasy tidak hanya berfungsi sebagai infrastruktur penghubung, tetapi juga sebagai simbol kemajuan dan identitas budaya Kota Jambi. Dengan segala keunikan dan keindahannya, jembatan ini telah menjadi salah satu destinasi wisata yang wajib dikunjungi oleh siapa saja yang datang ke Jambi. Proyek ini mencerminkan semangat modernisasi yang harmonis dengan warisan budaya dan, menjadikan Jembatan Gentala Arasy sebagai salah satu karya arsitektur yang patut dibanggakan.',
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
                                  'Ibnu Ziady MZ, Nurlaini, Jusuf Martun, & Junaidi T. Norr. (2014). ',
                            ),
                            TextSpan(
                                text: 'Gentala Arasy',
                                style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic)),
                            TextSpan(
                              text:
                                  '. Pusat Kajian Pengembangan Sejarah dan Budaya Jambi (Research Centre of Jambi Heritage Development/Jambi Heritage).',
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
