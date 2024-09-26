import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({super.key});

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Percakapan",
          style: TextStyle(color: Colors.black),
        )),
        body: SingleChildScrollView(
          child: Container(
              height: 1130,
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
                          "Percakapan Antara Dua Orang",
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
                                    player.play(
                                        AssetSource('audio/percakapan.mp3'));
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
                      "Dialog",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "A : Assalamualaikum, apo kabar?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "A : Asalamualaikum, apa kabar?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "B : Waalaikumsalam, kabar baeklah. Apo cerito ko?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "B : Waalaikum salam, kabar baik. Ada apa, nih?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "A : Daklah iko ko ado dikit cerito.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "A : Nggak, saya ada sedikit cerita.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "B : Apo cerito tu, ceritolah siko.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "B : Cerita apa tu, ceritalah sini.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "A : Ceritonyo sayo ko nak nerimo menantu.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "A : Ceritanya saya mau terima menantu.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "B : Alhamdullilah, elok lah tu. Kapan ceritonyo tu? Orang mano budak tu?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "B : Alhamdullilah, baguslah. Kapan terima menantunya? Dari mana asal calon menantunya?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "A : Orang jambi ko lah. Sesamo kawan budak tu kerjolah. Ceritonyo tu nak betunang lah abis lebaran aji ko.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "A : Orang Jambilah. Sesama teman kerja anak saya. Ceritanya itu akan bertunangan setelah Lebaran Haji.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "B : Oh, ceritonyo nak ngundang makan dageng ko. ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "B : Oh, jadi ceritanya mau ngundang untuk makan daging.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "A : Serupo tu lah ceritonyo. Jangan lupo pulak dak datang yo.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "A : Serupa itulah ceritanya. Jangan lupa datang, ya.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(185, 185, 185, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 15, right: 10),
                    child: Text(
                      "B : Insyallah datang.",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color.fromRGBO(153, 51, 65, 1),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                    child: Text(
                      "B : Insyallah datang.",
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
