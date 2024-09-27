import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

class Alfabet extends StatefulWidget {
  const Alfabet({super.key});

  @override
  State<Alfabet> createState() => _AlfabetState();
}

class _AlfabetState extends State<Alfabet> {
  List<bool> isPlayingList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ]; // Status untuk setiap item
  final player = AudioPlayer();
  int? currentlyPlayingIndex; // Indeks item yang sedang diputar

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void _handlePlayPause(int index, String audioPath) async {
    if (currentlyPlayingIndex == index && isPlayingList[index]) {
      // Hentikan audio jika sudah diputar
      await player.stop();
      setState(() {
        isPlayingList[index] = false;
        currentlyPlayingIndex = null;
      });
    } else {
      if (currentlyPlayingIndex != null) {
        // Hentikan audio sebelumnya jika ada
        await player.stop();
        setState(() {
          isPlayingList[currentlyPlayingIndex!] = false;
        });
      }
      // Mainkan audio baru
      await player.play(AssetSource(audioPath));
      setState(() {
        currentlyPlayingIndex = index;
        isPlayingList[index] = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pelafalan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 40),
          child: Column(
            children: [
              // Container untuk Header
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
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                          bottom: 13,
                          left: 0,
                          right: 12,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/img/FT-CaraBaca.png',
                              width: 124,
                              height: 124,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Text(
                              'Perhatikan pelafalan\nhuruf fonem berikut!',
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
              SizedBox(height: 10),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Huruf Fonetis',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 48,
                            height: 148,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 100,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.only(
                                      left: 15, right: 12, top: 28),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Text(
                                    '/ê/',
                                    style: GoogleFonts.notoSans(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '/ê/',
                                            style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _handlePlayPause(
                                                  0, 'audio/e_satu.mp3');
                                            },
                                            icon: Icon(
                                              isPlayingList[0]
                                                  ? Icons.pause
                                                  : Icons.volume_up_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Vokal /e/ akan dilafalkan sebagai /ê/',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                'seperti pada ne.ge.ri /nêgêRi/;',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'ne.ge.ri /nêgêri/',
                                                    style: GoogleFonts.notoSans(
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      _handlePlayPause(1,
                                                          'audio/negeri.mp3');
                                                    },
                                                    icon: Icon(
                                                      isPlayingList[1]
                                                          ? Icons.pause
                                                          : Icons
                                                              .volume_up_outlined,
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 48,
                            height: 148,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 100,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.only(
                                      left: 15, right: 12, top: 28),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Text(
                                    '/è/',
                                    style: GoogleFonts.notoSans(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '/è/',
                                            style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _handlePlayPause(
                                                  2, 'audio/e_dua.mp3');
                                            },
                                            icon: Icon(
                                              isPlayingList[2]
                                                  ? Icons.pause
                                                  : Icons.volume_up_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Vokal /e/ akan dilafalkan sebagai /è/',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                'seperti pada be.bek /bèbèk/;',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'be.bek /bèbèk/',
                                                    style: GoogleFonts.notoSans(
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      _handlePlayPause(
                                                          3, 'audio/bebek.mp3');
                                                    },
                                                    icon: Icon(
                                                      isPlayingList[3]
                                                          ? Icons.pause
                                                          : Icons
                                                              .volume_up_outlined,
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 48,
                            height: 158,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 100,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.only(
                                      left: 15, right: 12, top: 28),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Text(
                                    '/ʊ/',
                                    style: GoogleFonts.notoSans(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '/ʊ/',
                                            style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _handlePlayPause(
                                                  4, 'audio/tanda_u.mp3');
                                            },
                                            icon: Icon(
                                              isPlayingList[4]
                                                  ? Icons.pause
                                                  : Icons.volume_up_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Vokal /u/ akan dilafalkan sebagai /ʊ/',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                '(menyerupai /gh/) seperti pada',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                'cu.kup /cʊkʊp/;',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'cu.kup /cʊkʊp/',
                                                    style: GoogleFonts.notoSans(
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      _handlePlayPause(
                                                          5, 'audio/cukup.mp3');
                                                    },
                                                    icon: Icon(
                                                      isPlayingList[5]
                                                          ? Icons.pause
                                                          : Icons
                                                              .volume_up_outlined,
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 48,
                            height: 158,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 100,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.only(
                                      left: 22, right: 12, top: 28),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Text(
                                    '/ɨ/',
                                    style: GoogleFonts.notoSans(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '/ɨ/',
                                            style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _handlePlayPause(
                                                  6, 'audio/tanda_i.mp3');
                                            },
                                            icon: Icon(
                                              isPlayingList[6]
                                                  ? Icons.pause
                                                  : Icons.volume_up_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Vokal /i/ akan dilafalkan sebagai /ɨ/',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                '(menyerupai /gh/) seperti pada',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                'mang.gis /manggɨs/;',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'mang.gis /manggɨs/',
                                                    style: GoogleFonts.notoSans(
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      _handlePlayPause(7,
                                                          'audio/manggis.mp3');
                                                    },
                                                    icon: Icon(
                                                      isPlayingList[7]
                                                          ? Icons.pause
                                                          : Icons
                                                              .volume_up_outlined,
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
                            width: MediaQuery.of(context).size.width - 48,
                            height: 158,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Color.fromRGBO(251, 182, 175, 1)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 76,
                                  height: 100,
                                  margin: EdgeInsets.only(left: 8),
                                  padding: EdgeInsets.only(
                                      left: 15, right: 12, top: 28),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(251, 182, 175, 1),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Text(
                                    '/R/',
                                    style: GoogleFonts.notoSans(
                                      fontSize: 29,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '/R/',
                                            style: GoogleFonts.notoSans(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              _handlePlayPause(
                                                  8, 'audio/R.mp3');
                                            },
                                            icon: Icon(
                                              isPlayingList[8]
                                                  ? Icons.pause
                                                  : Icons.volume_up_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Konsonan /r/ akan dilafalkan sebagai',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                '/R/ (menyerupai /gh/) seperti pada',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                'ba.ru /baRu/;',
                                                style: GoogleFonts.notoSans(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'ba.ru /baRu/',
                                                    style: GoogleFonts.notoSans(
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      _handlePlayPause(
                                                          9, 'audio/baru.mp3');
                                                    },
                                                    icon: Icon(
                                                      isPlayingList[9]
                                                          ? Icons.pause
                                                          : Icons
                                                              .volume_up_outlined,
                                                      color: Color.fromRGBO(
                                                          153, 51, 65, 1),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
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
                      width: MediaQuery.of(context).size.width - 48,
                      height: 148,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(color: Color.fromRGBO(251, 182, 175, 1)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 76,
                            height: 100,
                            margin: EdgeInsets.only(left: 8),
                            padding:
                                EdgeInsets.only(left: 15, right: 12, top: 28),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(251, 182, 175, 1),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text(
                              '/?/',
                              style: GoogleFonts.notoSans(
                                fontSize: 29,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '/?/',
                                      style: GoogleFonts.notoSans(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _handlePlayPause(
                                            10, 'audio/tanda_tanya.mp3');
                                      },
                                      icon: Icon(
                                        isPlayingList[10]
                                            ? Icons.pause
                                            : Icons.volume_up_outlined,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Konsonan /k/ dilafalkan sebagai /?/',
                                          style: GoogleFonts.notoSans(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'diucapkan seperti pada ka.kak /kaka?/.',
                                          style: GoogleFonts.notoSans(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'ka.kak /kaka?/',
                                              style: GoogleFonts.notoSans(
                                                color: Color.fromRGBO(
                                                    153, 51, 65, 1),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                _handlePlayPause(
                                                    11, 'audio/kakak.mp3');
                                              },
                                              icon: Icon(
                                                isPlayingList[11]
                                                    ? Icons.pause
                                                    : Icons.volume_up_outlined,
                                                color: Color.fromRGBO(
                                                    153, 51, 65, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
