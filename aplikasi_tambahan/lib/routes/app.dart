import 'package:aplikasi_tambahan/detail_pencarian/detailkata.dart';
import 'package:aplikasi_tambahan/detail_pencarian/detailkata2.dart';
import 'package:aplikasi_tambahan/detail_pencarian/detailkata3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_tambahan/screens/beranda.dart';
import 'package:aplikasi_tambahan/screens/kosakata.dart';
import 'package:aplikasi_tambahan/screens/permainan.dart';
import 'package:aplikasi_tambahan/screens/informasi.dart';

class DictionaryApp extends StatefulWidget {
  const DictionaryApp({super.key});

  @override
  State<DictionaryApp> createState() => _DictionaryAppState();
}

class _DictionaryAppState extends State<DictionaryApp> {
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    const Beranda(),
    const PencarianPage(),
    const Permainan(),
    const Informasi(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Color(0xFFEEEEEE),
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return GoogleFonts.poppins(
                color: Color.fromRGBO(153, 51, 65, 1),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              );
            } else {
              return GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              );
            }
          }),
          iconTheme: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return IconThemeData(
                color: Color.fromRGBO(153, 51, 65, 1),
              );
            } else {
              return IconThemeData(
                color: Colors.black,
              );
            }
          }),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/beranda': (context) => const Beranda(),
        '/kosakata': (context) => const PencarianPage(),
        '/permainan': (context) => const Permainan(),
        '/seloko': (context) => const Informasi(),
        '/detailkata': (context) => const DetailKataPage(),
        '/detailkata2': (context) => const DetailKata2Page(),
        '/detailkata3': (context) => const DetailKata3Page(),
      },
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Color.fromRGBO(153, 51, 65, 1),
              ),
              icon: Icon(Icons.home_outlined),
              label: 'Beranda',
            ),
            NavigationDestination(
              selectedIcon:
                  Icon(Icons.book, color: Color.fromRGBO(153, 51, 65, 1)),
              icon: Icon(Icons.book_outlined),
              label: 'Kosa Kata',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.videogame_asset_rounded,
                  color: Color.fromRGBO(153, 51, 65, 1)),
              icon: Icon(Icons.videogame_asset_outlined),
              label: 'Permainan',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.info_rounded,
                  color: Color.fromRGBO(153, 51, 65, 1)),
              icon: Icon(Icons.info_outlined),
              label: 'Informasi',
            ),
          ],
        ),
        body: _pages[currentPageIndex],
      ),
    );
  }
}
