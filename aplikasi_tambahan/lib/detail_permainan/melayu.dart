import 'package:aplikasi_tambahan/penting/db_provider.dart';
import 'package:aplikasi_tambahan/penting/word_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class Melayu extends StatefulWidget {
  @override
  _MelayuState createState() => _MelayuState();
}

class _MelayuState extends State<Melayu> {
  late Future<List<KataCombine>> _quizQuestions;
  int _currentQuestionIndex = 0;
  int _score = 0;
  Timer? _timer;
  int _secondsPassed = 0;
  List<String> _currentOptions = [];
  String? _selectedAnswer;
  String? _correctAnswer;

  @override
  void initState() {
    super.initState();
    _quizQuestions = DBProvider.db.get3RandomWords();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _secondsPassed++;
      });
    });
  }

  void _checkAnswer(String selectedAnswer) {
    setState(() {
      _selectedAnswer = selectedAnswer;
    });

    if (selectedAnswer == _correctAnswer) {
      setState(() {
        _score++;
      });
    }

    // Jangan langsung pindah ke soal berikutnya, tampilkan opsi yang benar dan salah
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < 9) {
      setState(() {
        _currentQuestionIndex++;
        _selectedAnswer = null; // Reset pilihan jawaban
        _correctAnswer = null; // Reset jawaban yang benar
        _setOptions();
      });
    } else {
      _showScore();
      _timer?.cancel();
    }
  }

  void _setOptions() async {
    final snapshot = await _quizQuestions;
    final question = snapshot[_currentQuestionIndex];

    // Tentukan pertanyaan
    _correctAnswer = question.kata;

    final List<String> options = [];

    if (question.kata.isNotEmpty) options.add(question.kata);

    snapshot.forEach((element) {
      if (element.arti != question.arti ||
          element.arti_tm != question.arti_tm) {
        final option = element.kata;
        if (option.isNotEmpty && options.length < 3) {
          options.add(option);
        }
      }
    });

    // Acak urutan opsi
    options.shuffle(Random());

    setState(() {
      _currentOptions = options;
    });
  }

  void _showScore() {
    final minutes = (_secondsPassed ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsPassed % 60).toString().padLeft(2, '0');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Skor Anda',
          style: GoogleFonts.poppins(),
        ),
        content: Text(
          'Total benar $_score dari 10 pertanyaan.\n'
          'Waktu yang dihabiskan $minutes:$seconds.',
          style: GoogleFonts.poppins(),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _score = 0;
                _currentQuestionIndex = 0;
                _secondsPassed = 0;
                _selectedAnswer = null; // Reset pilihan jawaban
                _correctAnswer = null; // Reset jawaban yang benar
                _quizQuestions = DBProvider.db.get3RandomWords();
                _setOptions();
                _startTimer();
              });
            },
            child: Text(
              'Main Lagi',
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(153, 51, 65, 1),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Kuis Tebak Kata'),
      ),
      body: FutureBuilder<List<KataCombine>>(
        future: _quizQuestions,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Tidak ada pertanyaan tersedia.'));
          } else {
            final question = snapshot.data![_currentQuestionIndex];

            if (_currentOptions.isEmpty) {
              _setOptions(); // Ensure options are set if empty
            }

            final minutes = (_secondsPassed ~/ 60).toString().padLeft(2, '0');
            final seconds = (_secondsPassed % 60).toString().padLeft(2, '0');

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Menambahkan indikator soal dan timer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Soal ${_currentQuestionIndex + 1}/10',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        Text(
                          '$minutes:$seconds',
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(153, 51, 65, 1),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            "Silakan klik jawaban yang benar dari tiga pilihan yang diberikan.",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(
                            question.arti.isNotEmpty
                                ? question.arti
                                : question.arti_tm,
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    for (var option in _currentOptions)
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: ElevatedButton(
                          onPressed: _selectedAnswer == null
                              ? () => _checkAnswer(option)
                              : null,
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color>(
                              (Set<WidgetState> states) {
                                if (states.contains(WidgetState.disabled)) {
                                  if (option == _correctAnswer) {
                                    return Colors
                                        .green; // Warna hijau jika benar
                                  } else if (option == _selectedAnswer) {
                                    return const Color.fromRGBO(153, 51, 65,
                                        1); // Warna merah jika salah
                                  } else {
                                    return const Color.fromRGBO(153, 51, 65,
                                        1); // Warna default untuk tombol disable
                                  }
                                }
                                return Colors
                                    .white; // Warna default sebelum disable
                              },
                            ),
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.only(
                                  top: 24, bottom: 24, left: 20, right: 20),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            side: WidgetStateProperty.all(
                              BorderSide(
                                color: _selectedAnswer == null
                                    ? const Color.fromRGBO(153, 51, 65, 1)
                                    : option == _correctAnswer
                                        ? Colors.green
                                        : option == _selectedAnswer
                                            ? const Color.fromRGBO(
                                                153, 51, 65, 1)
                                            : const Color.fromRGBO(
                                                153, 51, 65, 1),
                                width: 1,
                              ),
                            ),
                          ),
                          child: Text(
                            option,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: _selectedAnswer == null
                                    ? Colors.black
                                    : _selectedAnswer != null
                                        ? Colors.white
                                        : Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    if (_selectedAnswer != null)
                      ElevatedButton(
                        onPressed: _nextQuestion,
                        child: const Text('Selanjutnya'),
                      ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
