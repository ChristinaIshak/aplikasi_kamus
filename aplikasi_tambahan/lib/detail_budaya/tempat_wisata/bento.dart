import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bento extends StatefulWidget {
  const Bento({super.key});

  @override
  State<Bento> createState() => _BentoState();
}

class _BentoState extends State<Bento> {
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
                  child: Image.asset('assets/img/bento.jpg'),
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
                        'Jembatan Bento',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Jembatan Bento adalah salah satu destinasi wisata tersembunyi di Seberang Kota Jambi yang jarang diketahui oleh masyarakat luar. Lokasinya yang tidak dapat diakses oleh mobil, serta akses jalan yang sempit membuat motor pun harus bergantian masuk jika melalui sisi tertentu. Jembatan ini menjadi penghubung menuju Menara Gentala Arasy, sebuah ikon terkenal di Jambi. Selama musim kemarau, jembatan ini dikelilingi oleh sawah yang hijau, sementara saat musim hujan, sawah-sawah tersebut terendam air sehingga tampak seperti sungai. Popularitas jembatan ini meningkat setelah bendera Merah Putih dibentangkan di sepanjang jembatan untuk memperingati Hari Kemerdekaan.',
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
                        'Para santri dari Kelurahan Ulu Gedong, Kecamatan Danau Teluk, Kota Jambi, turut merayakan Hari Kemerdekaan Republik Indonesia dengan mengibarkan bendera Merah Putih sepanjang 76 meter di atas Jembatan Bento, yang juga dikenal sebagai jembatan hijau oleh warga setempat. Dengan penuh semangat, mereka menyanyikan lagu kemerdekaan "17 Agustus" saat membentangkan bendera, memperlihatkan rasa nasionalisme yang tinggi. Sukri, salah satu warga Seberang, menyatakan bahwa pengibaran bendera tersebut merupakan wujud cinta terhadap Negara Kesatuan Republik Indonesia (NKRI) dan sebagai bentuk perayaan HUT RI.',
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
                        'Ekspresi kecintaan terhadap tanah air ini terlihat jelas dari partisipasi warga dalam merayakan kemerdekaan. Para santri mengenakan baju koko putih saat membentangkan bendera sepanjang 76 meter, memberikan nuansa patriotisme yang mendalam. Jembatan Bento kini makin populer sebagai destinasi wisata, terutama di kalangan pesepeda yang melintasi Kecamatan Danau Teluk dan Pelayangan. Jembatan ini juga menjadi spot foto yang menarik bagi pengunjung, yang tidak jarang mengabadikan momen berlatar jembatan yang dihiasi pemandangan indah.',
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
                        'Momentum HUT RI ini dimanfaatkan oleh warga Seberang Kota Jambi untuk berdoa dan berikhtiar agar Indonesia segera terbebas dari pandemi Covid-19. Sebelumnya, perayaan serupa juga dilakukan di Jembatan Gentala Arasy, tempat Pemerintah Provinsi Jambi memasang bendera merah putih di sepanjang jembatan tersebut saat peringatan 17 Agustus 2021. Aksi-aksi ini menegaskan semangat patriotisme dan harapan warga Jambi agar bangsa Indonesia segera pulih dari masa sulit.',
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
                                  'METROJAMBI.COM. Diakses pada 07 September 2024 dari https://www.metrojambi.com/metro/13546940/Santri-Jambi-Bentang-Merah-Putih-Sepanjang-76-Meter-di-Jembatan-Hijau',
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
