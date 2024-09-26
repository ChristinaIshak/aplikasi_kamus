import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menara extends StatefulWidget {
  const Menara({super.key});

  @override
  State<Menara> createState() => _MenaraState();
}

class _MenaraState extends State<Menara> {
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
                  child: Image.asset('assets/img/menara_gentala.jpg'),
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
                        'Menara Gentala Arasy',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Menara Gentala Arasy merupakan simbol penting yang mencerminkan kebudayaan Melayu dan Islam di Jambi. Tanda-tanda baru dari simbol-simbol sosial dan budaya tersebut dapat ditemukan dalam berbagai elemen arsitektural Menara Gentala Arasy, seperti bentuk bangunan, menara, gerbang, pilar, dan gapura. Menara ini memiliki nilai historis yang sangat signifikan bagi perkembangan sumber daya yang ada di Provinsi Jambi, terutama pada masa kepemimpinan Bapak H. Hasan Basri Agus.',
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
                        'Pembangunan Menara Gentala Arasy dilakukan secara bertahap dari tahun 2011 hingga 2014. Gubernur Jambi saat itu, H. Hasan Basri Agus, memimpin proses pembangunan dengan dukungan dari Satuan Kerja Pemerintah Daerah (SKPD) terkait, terutama Dinas Pekerjaan Umum Provinsi Jambi, serta partisipasi masyarakat setempat. Proyek ini secara teknis dilaksanakan oleh para ahli yang memiliki kepakaran khusus di bidangnya.',
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
                                  'Menara ini memiliki bangunan utama seluas sekitar 1.290,44 m², sedangkan luas area taman dan pelataran lainnya mencapai sekitar 3.216,69 m². Menara ini memiliki tinggi sekitar 80 meter, dengan fondasi ',
                            ),
                            TextSpan(
                                text: 'bore pile',
                                style: GoogleFonts.poppins(
                                    fontStyle: FontStyle.italic)),
                            TextSpan(
                              text:
                                  ' sedalam 18 meter dan struktur inti menara terbuat dari beton dengan ketebalan 25 cm. Terdapat ruang museum seluas 652,53 m², dan balkon yang dapat diakses melalui lift pada ketinggian 25 meter. Menara ini juga dilengkapi dengan enam unit jam, empat di antaranya berada pada ketinggian 70 meter dengan diameter 3 meter, dan dua unit lainnya berada pada ketinggian 30 meter dengan diameter 1,2 meter. Semua angka-angka tersebut memiliki makna filosofis yang mendalam.',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sebagai contoh, angka 7 sering muncul dalam Al-Quran setelah angka 1 (ahad), yang menunjukkan pentingnya angka ini. Jumlah huruf dalam abjad Arab yang diturunkan dalam Al-Quran adalah 28, yang merupakan hasil perkalian 7x4. Angka tiga juga memiliki makna penting, seperti dalam konsep tiga pilar utama agama (tauhid, fikih, tasawuf). Ada juga misteri dalam angka tiga yang terkait dengan rumus tertentu.',
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
                        'Menara ini disokong oleh enam pilar utama yang melambangkan enam prinsip keimanan, yaitu: (1) iman kepada Allah, yang mencakup kepatuhan dan ketaatan terhadap ajaran dan hukum Allah; (2) iman kepada malaikat-malaikat Allah, yang berarti menyadari dan percaya akan kekuasaan dan kebesaran Allah; (3) iman kepada kitab-kitab Allah, yang mengharuskan kita untuk mengamalkan ajaran yang terkandung dalam kitab-kitab-Nya, termasuk Al-Quran, Zabur, Taurat, dan Injil; (4) iman kepada rasul-rasul Allah, yang mendorong kita untuk meneladani perjuangan para nabi dan rasul dalam menegakkan kebenaran dengan kesabaran; (5) iman kepada hari kiamat, yang mengajarkan bahwa setiap perbuatan akan mendapatkan balasannya; dan (6) iman kepada Qada dan Qadar, yang berarti memahami keputusan serta ketetapan yang telah ditentukan oleh Allah.',
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
                        'Nama "Gentala" adalah gabungan dari dua kata, "genta" yang berarti \'alat bunyi dari logam\'\, dan "tala" yang merujuk pada alat penyelaras nada. Gabungan ini dimaknai sebagai bunyi pemandu yang selaras. Sementara itu, kata "Arasy" mengacu pada \'tahta tertinggi\'\. Dengan demikian, "Gentala Arasy" berarti \'bunyi panduan yang menyelaraskan ketentuan waktu di mana umat harus merunduk, ruku, dan sujud kepada Allah yang Maha Tinggi.\'',
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
                        'Menara Gentala Arasy diharapkan menjadi sumber inspirasi, yang menyatukan antara doa dan usaha yang harus selalu ada dalam jiwa yang penuh harapan, jauh dari putus asa. Keberadaannya di langit Jambi juga diharapkan menginspirasi sikap teguh dan lurus dalam setiap tindakan, sebagaimana diajarkan oleh para imam bahwa mereka yang istikamah dan teguh dalam tauhid dan ketaatan akan mendapatkan kabar baik dari malaikat ketika ajal menjemput.',
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
                        'Selain itu, Menara Gentala Arasy juga dapat diartikan sebagai \'gentala tanah kelahiran Abdurrahman Sayoeti\' yang merujuk pada Gubernur Jambi (1989-1999) yang lahir dan dibesarkan dalam lingkungan islami di Kota Seberang. Sosok Abdurrahman Sayoeti dihormati atas pengabdiannya yang tulus dan menjadi simbol yang kokoh sepanjang masa.',
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
                        'Ide cemerlang Gubernur Jambi, H. Hasan Basri Agus, yang menciptakan ikon Jambi dalam bentuk Menara Gentala Arasy, memberikan makna mendalam dalam tekad, kerja keras, kejujuran, dan ketekunan untuk tujuan menyejahterakan rakyat yang lebih bermartabat dengan selalu becermin dan menapak jejak masa lalu. Seperti pepatah "putih kapas dapat dilihat, putih hati berkeadaan," Menara Gentala Arasy adalah simbol kebesaran jiwa dan semangat yang menyala di tengah-tengah masyarakat Jambi.',
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
