import 'package:aplikasi_tambahan/penting/db_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class KamusApiProvider {
  getAllWords() async {
    try {
      await DBProvider.db.deleteAllWords();
      await DBProvider.db.deleteAllWords2();
      await DBProvider.db.deleteAllWords3();
      await DBProvider.db.deleteAllWords5();
    } on Exception catch (_) {}

    final supabase = Supabase.instance.client;
    final response = await supabase.from('induk').select();
    final response2 = await supabase.from('turunan_kata').select();
    final response3 = await supabase.from('turunan_mkn').select();
    final response4 = await supabase.from('homonim').select();
    DBProvider.db.createWords(response);
    DBProvider.db.createWords2(response2);
    DBProvider.db.createWords3(response3);
    DBProvider.db.createWords4(response4);
  }
}
