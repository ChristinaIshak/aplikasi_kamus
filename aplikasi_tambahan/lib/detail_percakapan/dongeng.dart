import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class Dongeng extends StatefulWidget {
  const Dongeng({super.key});

  @override
  State<Dongeng> createState() => _DongengState();
}

class _DongengState extends State<Dongeng> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  late StreamSubscription<PlayerState> _playerStateSubscription;
  late StreamSubscription<Duration> _durationSubscription;
  late StreamSubscription<Duration> _positionSubscription;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    _playerStateSubscription = player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    _durationSubscription = player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    _positionSubscription = player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    // Hentikan audio sebelum halaman dihancurkan
    player.stop();
    player.dispose();

    // Batalkan semua listener untuk mencegah kebocoran memori
    _playerStateSubscription.cancel();
    _durationSubscription.cancel();
    _positionSubscription.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Cerita Dongeng",
          style: TextStyle(color: Colors.black),
        )),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 40),
              padding: EdgeInsets.only(left: 10, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(251, 182, 175, 1))),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Cerita Dongeng",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  if (isPlaying) {
                                    player.pause();
                                  } else {
                                    player.play(AssetSource(
                                        'audio/cerita_dongeng.mp3'));
                                  }
                                },
                                icon: Icon(
                                  isPlaying
                                      ? Icons.pause_circle_outlined
                                      : Icons.play_circle_outlined,
                                  color: Color.fromRGBO(153, 51, 65, 1),
                                  size: 40,
                                )),
                            IconButton(
                                onPressed: () {
                                  player.stop();
                                },
                                icon: Icon(
                                  Icons.stop_circle_outlined,
                                  color: Color.fromRGBO(153, 51, 65, 1),
                                  size: 40,
                                )),
                          ],
                        ),
                        Slider(
                            activeColor: Color.fromRGBO(153, 51, 65, 1),
                            //inactiveColor: Color.fromRGBO(251, 182, 175, 1),
                            min: 0,
                            max: duration.inSeconds.toDouble(),
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) {
                              final position = Duration(seconds: value.toInt());
                              player.seek(position);
                              player.resume();
                            }),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(formatTime(position.inSeconds)),
                              Text(formatTime((duration - position).inSeconds))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Teks",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: 10, top: 15, right: 10, bottom: 10),
                    child: Text(
                      'Dulu, ado seorang rajo dari Kerajaan Melayu. Rajo tu benamo Orang Kayo Itam. Wah, diok tu sakti dan pemberani nian! Rajo tu nikahin seorang putri. Namonyo Putri Mayang Mangurai. Olala, diok pun elok nian! Rajo dan putri dikasih hadiah. Hadiahnya tu sepasang angso samo perahu Kajang Lako. Rajo dan putri lalu pegi ngembara. Dengan perahu Kajang Lako, mereka pun nempuh sunge. Di Sunge Batanghari, Rajo dan Putri lepasin angso. Angso-angso tu berenang riang gembira. Rajo dan putri ngikutin angso-angso tu. Tibo di gena asing, angso-angso berenti. Si angso jantan bikin sarang. Si angso betino pun betelor. Rajo dan putri jugo ikut berenti. Mereka belabuh samo bikin kerajaan di gena tu. Gena tu laju diberi namo. Namonyo Jambi. Rajo dan Putri hidup bahagia di Jambi.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                        left: 10, top: 5, right: 10, bottom: 20),
                    child: Text(
                      'Dahulu ada seorang raja dari Kerajaan Melayu. Raja itu bernama Orang Kayo Itam. Wah, dia sakti dan sangat pemberani. Raja itu menikah seorang putri. Namanya Putri Mayang Mangurai. Olala, dia pun cantik sekali! Raja dan Putri dikasih hadiah. Hadiahnya sepasang angsa dan perahu Kajang Lako. Raja dan Putri lalu pergi mengembara. Dengan perahu Kajang Lako, mereka pun menyusuri sungai. Di Sungai Batanghari, Raja dan Putri melepas angsa. Angsa-angsa itu berenang riang gembira. Raja dan Putri mengikuti angsa-angsa itu. Tiba di tempat asing, angsa-angsa berhenti. Si angsa jantan membuat sarang. Si angsa betina pun bertelur. Rajo dan Putri juga ikut berhenti. Mereka melabuhkan perahu lalu mendirikan kerajaan di sana. Tempat itu lalu diberi nama. Namanya Jambi. Raja dan Putri hidup bahagia di Jambi.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
