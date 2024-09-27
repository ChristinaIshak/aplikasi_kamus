import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class Seloko extends StatefulWidget {
  const Seloko({super.key});

  @override
  State<Seloko> createState() => _SelokoState();
}

class _SelokoState extends State<Seloko> {
  bool _isExpanded = false;
  List<bool> isPlayingList = [
    false,
    false,
    false,
    false
  ]; // Status untuk setiap item
  final player = AudioPlayer();
  int? currentlyPlayingIndex; // Indeks item yang sedang diputar

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void _handlePlayPause(int index, String audioPath) async {
    if (currentlyPlayingIndex == index && isPlayingList[index]) {
      await player.stop();
      setState(() {
        isPlayingList[index] = false;
        currentlyPlayingIndex = null;
      });
    } else {
      if (currentlyPlayingIndex != null) {
        setState(() {
          isPlayingList[currentlyPlayingIndex!] = false;
        });
      }
      await player.play(AssetSource(audioPath));
      setState(() {
        currentlyPlayingIndex = index;
        isPlayingList[index] = true;
      });
    }
  }

  Widget _buildSelokoItem(
      int index, List<String> titles, String audioPath, List<String> meanings) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 48,
        //height: 136 + (titles.length - 2) * 20,
        padding: EdgeInsets.only(
            bottom: 20), // Adjusting height based on title count
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: const Color.fromRGBO(251, 182, 175, 1))),
        child: Row(
          children: [
            const SizedBox(width: 22),
            Container(
              margin: const EdgeInsets.only(top: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _handlePlayPause(index, audioPath);
                        },
                        icon: Icon(
                          isPlayingList[index]
                              ? Icons.stop
                              : Icons.volume_up_sharp,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: titles.map((title) {
                          return Text(
                            title,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color.fromRGBO(153, 51, 65, 1),
                                fontWeight: FontWeight.w500),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: meanings.map((meaning) {
                      return Text(
                        meaning,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Seloko",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 5, bottom: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 42),
                    width: MediaQuery.of(context).size.width - 48,
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
                          bottom: 3,
                          left: 0,
                          right: 14,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/img/poem.png',
                              width: 127,
                              height: 127,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: 'Dengarkan\n',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                      )),
                                  TextSpan(
                                    text: 'seloko',
                                    style: GoogleFonts.poppins(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' sekarang.',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: _toggleExpansion,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: 'Pilih ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                  text: 'seloko',
                                  style: GoogleFonts.poppins(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            _isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ),
                    if (_isExpanded)
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromRGBO(251, 182, 175, 1)),
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                                color: Colors.black, fontSize: 12),
                            children: [
                              TextSpan(
                                  text: 'Masyarakat Melayu jambi mengenal ',
                                  style: GoogleFonts.poppins()),
                              TextSpan(
                                text: 'seloko',
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' sebagai salah satu kekayaan budayanya. Kata ',
                                style: GoogleFonts.poppins(),
                              ),
                              TextSpan(
                                text: 'seloko',
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' merupakan penyebutan seloka dalam dialek setempat. Sementara itu, seloka sendiri diambil dari kata ',
                                style: GoogleFonts.poppins(),
                              ),
                              TextSpan(
                                text: 'sloka',
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' yang berasal dari bahasa Sanskerta. Seloko merupakan ungkapan tradisional yang mengandung ',
                                style: GoogleFonts.poppins(),
                              ),
                              TextSpan(
                                text: 'tunjuk ajar',
                                style: GoogleFonts.poppins(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' pengendalian sistem sosial dalam pembentukan pribadi masyarakat berupa pantun atau syair yang dibuat berdasarkan cerminan kehidupan sehari-hari yang sarat dengan pembelajaran, nasihat, petuah, sindirian, serta hukum dan tata nilai budaya masyarakat Melayu.',
                                style: GoogleFonts.poppins(),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                  ],
                ),
              ),
              _buildSelokoItem(
                0,
                ['Kurang sisik rumput menjadi', 'kurang siang jelepung tumbuh'],
                'audio/seloko_1.mp3',
                [
                  'Artinya: Apabila kurang hati-hati atau teliti ',
                  'dalam menghadapi masalah, akan berakbibat ',
                  'buruk.'
                ],
              ),
              _buildSelokoItem(
                1,
                ['Kecik dak besebut namo', 'Besak dak besebut gela'],
                'audio/seloko_2.mp3',
                [
                  'Artinya: Antara miskin dan kaya tidak ada',
                  'perbedaan, yang miskin tidak disebutkan, yang',
                  'kaya tidak dikatakan kaya.'
                ],
              ),
              _buildSelokoItem(
                2,
                [
                  'Menarik rambut dalam tepung',
                  'Rambut jangan putus',
                  'Tepung tidak berserak'
                ],
                'audio/seloko_3.mp3',
                ['Artinya: jika menyelesaikan sesuatu berhati-', 'hatilah'],
              ),
              _buildSelokoItem(
                3,
                [
                  'Negeri aman padi menjadi',
                  'Air jernih ikannyo jinak',
                  'Rumput mudo kerbaunyo gemuk',
                  'Turun kesungai cenetik keno',
                  'Naik kedarat perangkap berisi'
                ],
                'audio/seloko_4.mp3',
                [
                  'Artinya : berdoa serta mengharap kebahagiaan',
                  'dan keselamatan negeri'
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
