import 'package:aplikasi_tambahan/dekorasi/dashline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi extends StatefulWidget {
  const Informasi({super.key});

  @override
  State<Informasi> createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(
                Icons.info,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'informasi',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //margin: EdgeInsets.only(left: 85),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/logi-kbpj.png',
                      width: 140,
                    ),
                    Image.asset(
                      'assets/img/logo-unja.png',
                      width: 100,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tim Redaksi Kamus',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Tim Redaksi Kamus terdiri dari 1 (satu) Penanggung Jawab, 3 (tiga) Penyusun, 3 (tiga) Penyunting dan 1 (satu) Penyelaras.',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Sukardi Gau',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penanggung Jawab',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const DashedLine(
                      height: 2,
                      dashWidth: 8,
                      color: Color.fromRGBO(153, 51, 65, 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Ilsa Dewita Putri Soraya',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyusun',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Rahmadina',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyusun',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Husni Jamal',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyusun',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const DashedLine(
                      height: 2,
                      dashWidth: 8,
                      color: Color.fromRGBO(153, 51, 65, 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Elva Yusanti',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyunting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Leni Sulastri',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyunting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Gustia Mira',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyunting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const DashedLine(
                      height: 2,
                      dashWidth: 8,
                      color: Color.fromRGBO(153, 51, 65, 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Mhd. Zaki',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyelaras',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Penyumbang Data Kamus',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Penyumbang Data Kamus terdiri dari 6 (Enam) orang penutur asli.',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Husni Jamal',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Khalijah',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Cekwan Muhammad',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Rts. Asna',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Fitriah',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Dina Septi Restiana',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Penyumbang Saran',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Penyumbang Saran terdiri dari 4 (empat) orang.',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Rusli Ibrahim',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyumbang Saran',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Ridwal Jamil',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyumbang Saran',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Muhammad Amin Saib',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyumbang Saran',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Waspi Abubakar',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyumbang Saran',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                      'Pengumpul Data Kamus',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Pengumpul Data Kamus terdiri dari 2 (dua) orang.',
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
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Ilsa Dewita Putri Soraya',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengumpul Data Kamus',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Rahmadina',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengumpul Data Kamus',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                      'Penyumbang Data Suara',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Penyumbang Data Suara terdiri dari 3 (tiga) orang.',
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
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Sarifah Aminah',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Usman Gumanti',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penutur Asli',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
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
                      'Tim Pengembang',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Tim pengembang terdiri dari 3 (tiga) Dosen, Kepala Kantor Bahasa Provinsi Jambi dan 1 (satu) Mahasiswa Universitas Jambi.',
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
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Edi Saputra',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengembang',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Ulfa Khaira',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengembang',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Indra Weni',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengembang',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Christina Mutiara Ishak',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Pengembang',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 48,
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
                            'Adi Budiwiyanto',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('Penyunting',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
