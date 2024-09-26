import 'package:aplikasi_tambahan/penting/kamus_api_provider.dart';
import 'package:aplikasi_tambahan/routes/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://zwikaiakpoepzcdeereu.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp3aWthaWFrcG9lcHpjZGVlcmV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY3OTkyMjIsImV4cCI6MjAyMjM3NTIyMn0.ZEllPvUJ2cUKZdy_fZCDi97H3GUlW8b4jKwoinFz5hc',
  );
  final prefs = await SharedPreferences.getInstance();
  final bool? isSynced = prefs.getBool('isSynced');

  if (isSynced == null || isSynced == false) {
    // Jalankan sinkronisasi awal jika belum dilakukan
    await KamusApiProvider().getAllWords();
    // Tandai bahwa sinkronisasi awal telah selesai
    await prefs.setBool('isSynced', true);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: const SplashScreen(),
    );
  }
}
