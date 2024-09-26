import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ragam extends StatefulWidget {
  const Ragam({super.key});

  @override
  State<Ragam> createState() => _RagamState();
}

class _RagamState extends State<Ragam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Ragam Bahasa",
          style: TextStyle(color: Colors.black),
        )),
        body: Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 42),
                    width: 342,
                    height: 90,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(153, 51, 65, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                            bottom:
                                13, // Posisi gambar sejajar dengan garis bawah container
                            left: 0,
                            right: 12,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/img/talk.png',
                                width: 100,
                                height:
                                    100, // Ukuran gambar yang lebih besar dari container
                              ),
                            )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 23), // Jarak teks dari tepi container
                            child: Text(
                              'Ayo pahami ragam\nbahasa yang digunakan!',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
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
                      'Ragam Bahasa',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Label ragam bahasa ditulis setelah label kelas kata, dicetak miring, dan dipakai dalam bentuk singkatan huruf sebagai berikut.',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 360,
                      height: 56,
                      padding: EdgeInsets.only(left: 20, top: 10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(251, 183, 175, 1),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ark',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('menandai kata yang berciri kuno.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 360,
                      height: 90,
                      padding: EdgeInsets.only(left: 20, top: 10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(251, 183, 175, 1),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'hor',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                              'ragam hormat, untuk menandai kata yang digunakan untuk orang yang lebih tua atau dihormati.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 360,
                      height: 75,
                      padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(251, 183, 175, 1),
                          borderRadius: BorderRadius.circular(3)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'kas',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                              'kasar, untuk menandai kata kasar atau tidak sopan seperti makian.',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
