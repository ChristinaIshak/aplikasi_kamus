import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tepek extends StatefulWidget {
  const Tepek({super.key});

  @override
  State<Tepek> createState() => _TepekState();
}

class _TepekState extends State<Tepek> {
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
                  child: Image.asset('assets/img/foto2.jpg'),
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
                        'Gulai Tepek Ikan',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Gulai tepek ikan adalah masakan tradisional khas Jambi yang memiliki cita rasa istimewa. Hidangan ini menggunakan ikan sebagai bahan utama, umumnya ikan gabus, yang diolah secara unik menjadi tepek ikan. Proses pembuatannya dimulai dengan melepaskan daging ikan dari tulangnya, lalu menggilingnya hingga halus. Daging ikan giling tersebut kemudian dicampur dengan tepung sagu, bawang putih yang sudah dihaluskan, garam, dan air secukupnya. Adonan ini diuleni hingga bisa dibentuk tipis dan memanjang, kemudian direbus hingga matang untuk menghasilkan tepek ikan.',
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
                        'Setelah tepek ikan siap, langkah berikutnya adalah membuat kuah gulai yang kaya akan rempah. Bahan utama kuah gulai terdiri atas santan, potongan nanas, dan berbagai bumbu seperti kemiri, bawang merah, bawang putih, kunyit, lengkuas, jahe, cabai merah, serai, dan adas manis. Bumbu-bumbu itu ditumis terlebih dahulu hingga harum sebelum dihaluskan. Setelah itu, bumbu halus dimasukkan ke dalam santan yang sedang dimasak.',
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
                        'Santan yang telah mendidih kemudian dicampur dengan tepek ikan dan potongan nanas, yang memberikan rasa segar dan asam pada kuahnya. Gula dan garam ditambahkan secukupnya untuk menyeimbangkan rasa. Setelah semua bahan matang dan meresap, gulai diangkat dan siap disajikan. Sebagai sentuhan akhir, taburan daun kunyit yang diiris kecil-kecil ditambahkan di atas hidangan untuk menambah aroma dan keindahan tampilan.',
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
                        'Gulai tepek ikan bukan sekadar hidangan sehari-hari, melainkan bagian penting dalam berbagai acara adat dan tradisi di Jambi. Masakan ini sering disajikan pada momen-momen istimewa, seperti pesta pernikahan, kenduri, acara adat, dan jamuan untuk menyambut tamu-tamu penting. Keberadaannya sebagai salah satu kuliner khas Jambi menjadikan gulai tepek ikan sebagai simbol kekayaan budaya kuliner yang diwariskan secara turun-temurun.',
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
                                  'Warisan Budaya Takbenda Indonesia. Diakses pada 07 September 2024 dari https://warisanbudaya.kemdikbud.go.id/?newdetail&detailCatat=1836',
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
