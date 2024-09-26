import 'package:aplikasi_tambahan/detail_budaya/makanan/padamaran.dart';
import 'package:aplikasi_tambahan/detail_budaya/makanan/tempoyak.dart';
import 'package:aplikasi_tambahan/detail_budaya/makanan/tepek.dart';
import 'package:aplikasi_tambahan/detail_budaya/sejarah/baraqbah.dart';
import 'package:aplikasi_tambahan/detail_budaya/sejarah/sayyid%20_idrus.dart';
import 'package:aplikasi_tambahan/detail_budaya/sejarah/wadah_kue.dart';
import 'package:aplikasi_tambahan/detail_budaya/tempat_wisata/bento.dart';
import 'package:aplikasi_tambahan/detail_budaya/tempat_wisata/jembatan.dart';
import 'package:aplikasi_tambahan/detail_budaya/tempat_wisata/menara.dart';
import 'package:aplikasi_tambahan/detail_budaya/tradisi/cukuran.dart';
import 'package:aplikasi_tambahan/detail_budaya/tradisi/rias_pengantin.dart';
import 'package:aplikasi_tambahan/detail_budaya/tradisi/ruang_pengantin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Budaya extends StatefulWidget {
  const Budaya({super.key});

  @override
  State<Budaya> createState() => _BudayaState();
}

class _BudayaState extends State<Budaya> {
  String _selectedCategory = 'Tempat Wisata';

  void _onCategoryPressed(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  final List<String> _images = [
    'assets/img/gentala.jpg',
    'assets/img/menara_gentala.jpg',
    'assets/img/bento.jpg',
    'assets/img/cukuran.jpg',
    'assets/img/ruang_pengantin.jpg',
    'assets/img/rias_pengantin.jpg',
    'assets/img/padamaran.jpg',
    'assets/img/tempoyak2.jpg',
    'assets/img/foto2.jpg',
    'assets/img/foto1.jpg',
    'assets/img/wadah_kue.jpg',
    'assets/img/baraqbah.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Budaya",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 5, bottom: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 24, right: 24, top: 42),
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
                            bottom: 0,
                            left: 0,
                            right: 12,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                'assets/img/dancing.png',
                                width: 137,
                                height: 137,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child: Text(
                                'Ketahui Lebih\nBanyak Budaya\nJambi Seberang',
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
                        'Galeri Foto',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _images.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  _images[index],
                                  fit: BoxFit.cover,
                                  width: 250,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildCategoryButton('Tempat Wisata'),
                            SizedBox(width: 10),
                            _buildCategoryButton('Tradisi'),
                            SizedBox(width: 10),
                            _buildCategoryButton('Makanan'),
                            SizedBox(width: 10),
                            _buildCategoryButton('Sejarah'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildCategoryContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildCategoryButton(String category) {
    bool isSelected = _selectedCategory == category;
    return ElevatedButton(
      onPressed: () => _onCategoryPressed(category),
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected
            ? Color.fromRGBO(251, 182, 175, 1) // Warna ketika diklik
            : Colors.white, // Warna default sebelum diklik
        side: BorderSide(
          color: Color.fromRGBO(251, 182, 175, 1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        category,
        style: GoogleFonts.poppins(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildCategoryContent() {
    List<Map<String, String>> content;
    switch (_selectedCategory) {
      case 'Tempat Wisata':
        content = [
          {
            'title': 'Menara Gentala Arasy',
            'description':
                'Menara Gentala Arasy merupakan simbol penting yang mencerminkan kebudayaan Melayu dan Islam di Jambi.',
            'image': 'assets/img/menara_gentala.jpg',
            'page': 'Menara' // Gambar terkait
          },
          {
            'title': 'Jembatan Gentala Arasy',
            'description':
                'Jembatan Gentala Arasy merupakan salah satu ikon arsitektur modern di Kota Jambi.',
            'image': 'assets/img/gentala.jpg',
            'page': 'Jembatan' // Gambar terkait
          },
          {
            'title': 'Jembatan Bento',
            'description':
                'Jembatan Bento merupakan salah satu destinasi wisata tersembunyi di Seberang Kota Jambi yang jarang diketahui oleh masyarakat luar.',
            'image': 'assets/img/bento.jpg',
            'page': 'Bento' // Gambar terkait
          },
          // Tambahkan lebih banyak item sesuai kebutuhan
        ];
        break;
      case 'Tradisi':
        content = [
          {
            'title': 'Cukuran',
            'description':
                'Upacara Cukuran Akikah adalah tradisi pengguntingan rambut bayi yang juga menjadi momen untuk memberikan nama kepada sang bayi.',
            'image': 'assets/img/cukuran.jpg',
            'page': 'Cukuran'
          },
          {
            'title': 'Ruang Pengantin',
            'description':
                'Ruang pengantin in terdiri atas tempat tidur, lemar, dan peti yang digunakan untuk menyimpan arsip pribadi dan pakaian.',
            'image': 'assets/img/ruang_pengantin.jpg',
            'page': 'RuangPengantin'
          },
          {
            'title': 'Tata Rias Pengantin',
            'description':
                'Tata rias pengantin terdiri atas berbagai unsur yang menyatu untuk menciptakan kesatuan yang harmonis.',
            'image': 'assets/img/rias_pengantin.jpg',
            'page': 'RiasPengantin'
          },
          // Tambahkan lebih banyak item sesuai kebutuhan
        ];
        break;
      case 'Makanan':
        content = [
          {
            'title': 'Padamaran',
            'description':
                'Kue padamaran adalah kue tradisional khas Jambi yang terkenal dengan cita rasanya yang khas dan aromanya yang wangi.',
            'image': 'assets/img/padamaran.jpg',
            'page': 'Padamaran'
          },
          {
            'title': 'Gulai Tempoyak Patin',
            'description':
                'Hidangan ini menggunakan ikan patin sebagai bahan utama dan dicampur dengan tempoyak untuk memberikan rasa khas.',
            'image': 'assets/img/tempoyak2.jpg',
            'page': 'Tempoyak'
          },
          {
            'title': 'Gulai Tepek Ikan',
            'description':
                'Gulai tepek ikan adalah masakan tradisional khas Jambi yang menggunakan ikan sebagai bahan utama.',
            'image': 'assets/img/foto2.jpg',
            'page': 'Tepek'
          },
          // Tambahkan lebih banyak item sesuai kebutuhan
        ];
        break;
      case 'Sejarah':
        content = [
          {
            'title': 'Al-Habib Husin bin Ahmad Baraqbah',
            'description':
                'Al-Habib bin Ahmad Baraqbah merupakan tokoh penyebar islam pertama di Jambi.',
            'image': 'assets/img/baraqbah.jpg',
            'page': 'Baraqbah' // Gambar terkait
          },
          {
            'title': 'Sayyid Idrus bin Hasan Aljufri',
            'description':
                'Sayyid Idrus bin Hasan Aljufri adalah salah satu penyebar agama Islam di Kota Jambi, terutama di kawasan Jambi Kota Seberang pada tahun 1822 Masehi.',
            'image': 'assets/img/foto1.jpg',
            'page': 'SayyidIdrus' // Gambar terkait
          },
          {
            'title': 'Wadah Kue',
            'description':
                'Wadah kue dengan motif khas ini sering dimanfaatkan sebagai bahan antaran ataupun digunakan pada acara lamaran. ',
            'image': 'assets/img/wadah_kue.jpg',
            'page': 'WadahKue' // Gambar terkait
          },
          // Tambahkan lebih banyak item sesuai kebutuhan
        ];
        break;
      default:
        content = [];
    }
    return Column(
      children: content.map((item) {
        Widget page;
        switch (item['page']) {
          case 'Padamaran':
            page = Padamaran();
            break;
          case 'Tempoyak':
            page = Tempoyak();
            break;
          case 'Tepek':
            page = Tepek();
            break;
          case 'Menara':
            page = Menara();
            break;
          case 'Jembatan':
            page = Jembatan();
            break;
          case 'Bento':
            page = Bento();
            break;
          case 'Cukuran':
            page = Cukuran();
            break;
          case 'RiasPengantin':
            page = RiasPengantin();
            break;
          case 'RuangPengantin':
            page = RuangPengantin();
            break;
          case 'SayyidIdrus':
            page = SayyidIdrus();
            break;
          case 'WadahKue':
            page = WadahKue();
            break;
          case 'Baraqbah':
            page = Baraqbah();
            break;
          default:
            page = Scaffold(); // Halaman default jika tidak ada yang sesuai
        }
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(left: 10, top: 10, right: 16, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color.fromRGBO(251, 182, 175, 1)),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    item['image']!,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 120,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title']!,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        item['description']!,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 3, bottom: 3),
                        width: 101,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(251, 182, 175, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Lihat Detail',
                              style: GoogleFonts.poppins(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 12,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
