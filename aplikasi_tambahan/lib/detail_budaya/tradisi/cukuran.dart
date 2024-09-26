import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cukuran extends StatefulWidget {
  const Cukuran({super.key});

  @override
  State<Cukuran> createState() => _CukuranState();
}

class _CukuranState extends State<Cukuran> {
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
                  child: Image.asset('assets/img/cukuran.jpg'),
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
                        'Cukuran',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Upacara Cukuran Akikah adalah tradisi pengguntingan rambut bayi yang juga menjadi momen untuk memberikan nama kepada sang bayi. Biasanya, upacara ini diramaikan dengan pembacaan barzanji yang dilanjutkan dengan kegiatan Marhaban. Upacara ini dilaksanakan sebelum bayi berusia 40 hari atau pada waktu yang sesuai dengan kesempatan dan kemampuan orang tua. Pelaksanaan Akikah melibatkan penyembelihan kambing atau domba untuk bayi yang berusia 7, 14, atau 21 hari. Jumlah kambing yang disembelih adalah dua ekor untuk bayi laki-laki dan satu ekor untuk bayi perempuan. Berdasarkan hadis Samirah, Nabi Muhammad saw. bersabda, "Seorang anak tergadai dengan akikahnya, maka disembelihlah akikah untuknya pada hari ketujuh, dan diberi nama." (HR. al-Tirmidzi).',
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
                        'Namun, jika Akikah tidak dapat dilaksanakan pada hari ketujuh, dapat dilaksanakan pada hari ke-14. Jika masih belum bisa, dapat dilakukan pada hari ke-21 atau kapan saja orang tua mampu melaksanakannya. Imam Malik menyatakan bahwa keterikatan pada hari ketujuh bersifat anjuran sehingga jika Akikah dilaksanakan pada hari ke-4, ke-8, ke-10, atau setelahnya, Akikah tersebut tetap sah. Prinsip dasar dalam ajaran Islam adalah untuk memudahkan, bukan mempersulit, sebagaimana firman Allah Swt.: "Allah menghendaki kemudahan bagimu dan tidak menghendaki kesukaran bagimu." (QS. Al-Baqarah: 185).',
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
                        'Pengikut Imam Syafi\'i juga berpendapat serupa. Mereka menyarankan bahwa jika seorang anak telah dewasa dan belum diaqiqahi oleh orang tuanya, disarankan bagi dirinya untuk melakukan Aqiqah sendiri.',
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
                                  'Museum Gentala Arasy, Jambi, Indonesia. “Cukuran”, diambil dari label keterangan pada kunjungan 13 Agustus 2024.',
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
