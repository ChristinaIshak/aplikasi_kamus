import 'dart:io';
import 'package:aplikasi_tambahan/penting/word_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async => _database ??= await initDB();

  // Create the database and the Word table
  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'kamus_melayu.db');
    print('Database path: $path');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('CREATE TABLE induk('
          'kode VARCHAR PRIMARY KEY,'
          'kata_jambi VARCHAR,'
          'cara_baca VARCHAR,'
          'kelas_kata VARCHAR,'
          'ragam VARCHAR,'
          'arti VARCHAR,'
          'contoh VARCHAR,'
          'penggal VARCHAR,'
          'arti_cth VARCAHAR,'
          'pemerian VARCHAR,'
          'penggal2 VARCHAR'
          ')');
      await db.execute('CREATE TABLE turunan_kata('
          'id_tk VARCHAR PRIMARY KEY,'
          'kode VARCHAR,'
          'kata_jambi_tk VARCHAR,'
          'cara_baca_tk VARCHAR,'
          'kelas_kata_tk VARCHAR,'
          'ragam_tk VARCHAR,'
          'arti_tk VARCHAR,'
          'contoh_tk VARCHAR,'
          'penggal_tk VARCHAR,'
          'arti_cth_tk VARCHAR,'
          'id_hmn VARCHAR,'
          'sublema VARCHAR,'
          'FOREIGN KEY (kode) REFERENCES induk(kode),'
          'FOREIGN KEY (id_hmn) REFERENCES homonim(id_hmn)'
          ')');
      await db.execute('CREATE TABLE turunan_mkn('
          'id_tm VARCHAR PRIMARY KEY,'
          'kode VARCHAR,'
          'id_tk VARCHAR,'
          'turunan_makna VARCHAR,'
          'kelas_kata_tm VARCHAR,'
          'ragam_tm VARCHAR,'
          'arti_tm VARCHAR,'
          'cth_tm VARCHAR,'
          'no_tm VARCHAR,'
          'arti_cth_tm VARCHAR,'
          'id_hmn VARCHAR,'
          'FOREIGN KEY (kode) REFERENCES induk(kode),'
          'FOREIGN KEY (id_tk) REFERENCES turunan_makna(id_tk)'
          ')');
      await db.execute('CREATE TABLE homonim('
          'id_hmn VARCHAR PRIMARY KEY,'
          'kode VARCHAR,'
          'kata_jambi_hmn VARCHAR,'
          'penggal_hmn VARCHAR,'
          'cara_baca_hmn VARCHAR,'
          'pemerian_hmn VARCHAR,'
          'penggal2_hmn VARCHAR,'
          'kelas_kata_hmn VARCHAR,'
          'ragam_hmn VARCHAR,'
          'arti_hmn VARCHAR,'
          'contoh_hmn VARCHAR,'
          'arti_cth_hmn VARCHAR,'
          'no_hmn VARCHAR,'
          'FOREIGN KEY (kode) REFERENCES induk(kode)'
          ')');
      await db.execute('''CREATE VIEW kata_combined AS
          SELECT 
            induk.kata_jambi AS kata,
            induk.kelas_kata AS kelas_kata,
            induk.ragam AS ragam, 
            induk.kode AS kode,
            NULL AS id_tk,
            induk.arti AS arti,
            turunan_mkn.turunan_makna AS turunan_makna,
            induk.penggal AS penggal,
            induk.arti_cth AS arti_cth,
            induk.cara_baca AS cara_baca,
            induk.contoh AS contoh,
            homonim.id_hmn AS id_hmn,
            homonim.kata_jambi_hmn AS kata_jambi_hmn,
            homonim.pemerian_hmn AS pemerian_hmn,
            homonim.arti_hmn AS arti_hmn,
            induk.pemerian AS pemerian,
            induk.penggal2 AS penggal2,
            turunan_mkn.no_tm AS no_tm,
            turunan_mkn.kelas_kata_tm AS kelas_kata_tm,
            turunan_mkn.ragam_tm AS ragam_tm,
            turunan_mkn.arti_tm AS arti_tm
          FROM induk 
          LEFT JOIN (
            SELECT turunan_mkn.kode, turunan_mkn.turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm, turunan_mkn.ragam_tm, turunan_mkn.arti_tm
            FROM turunan_mkn 
            WHERE no_tm = '1'
          ) turunan_mkn 
          ON induk.kode = turunan_mkn.kode
          LEFT JOIN (
            SELECT homonim.kode, homonim.id_hmn, homonim.kata_jambi_hmn, homonim.pemerian_hmn, homonim.arti_hmn  
            FROM homonim 
            WHERE no_hmn = '2'
          ) homonim 
          ON induk.kode = homonim.kode
          UNION ALL
          SELECT 
            turunan_kata.kata_jambi_tk AS kata,
            turunan_kata.kelas_kata_tk AS kelas_kata, 
            turunan_kata.ragam_tk AS ragam, 
            NULL AS kode, 
            turunan_kata.id_tk AS id_tk,
            turunan_kata.arti_tk AS arti,
            turunan_mkn.turunan_makna AS turunan_makna,
            turunan_kata.penggal_tk AS penggal,
            turunan_kata.arti_cth_tk AS arti_cth,
            turunan_kata.cara_baca_tk AS cara_baca,
            turunan_kata.contoh_tk AS contoh,
            homonim.id_hmn AS id_hmn,
            homonim.kata_jambi_hmn AS kata_jambi_hmn,
            homonim.pemerian_hmn AS pemerian_hmn,
            homonim.arti_hmn AS arti_hmn,
            NULL AS pemerian,
            NULL AS penggal2,
            turunan_mkn.no_tm AS no_tm,
            turunan_mkn.kelas_kata_tm AS kelas_kata_tm,
            turunan_mkn.ragam_tm AS ragam_tm,
            turunan_mkn.arti_tm AS arti_tm
          FROM turunan_kata
          LEFT JOIN (
            SELECT turunan_mkn.id_tk, turunan_mkn.turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm, turunan_mkn.ragam_tm, turunan_mkn.arti_tm
            FROM turunan_mkn 
            WHERE no_tm = '1'
          ) turunan_mkn 
          ON turunan_kata.id_tk = turunan_mkn.id_tk
          LEFT JOIN (
            SELECT homonim.kode, homonim.id_hmn, homonim.kata_jambi_hmn, homonim.pemerian_hmn, homonim.arti_hmn  
            FROM homonim 
            WHERE no_hmn = '2'
          ) homonim 
          ON homonim.id_hmn = turunan_kata.id_hmn
          ''');
    });
  }

  // Insert kata dari tabel induk
  createWords(List<Map<String, dynamic>> listWord) async {
    final db = await database;
    Batch batch = db.batch();

    for (var wordMap in listWord) {
      //assuming you have 'Cities' class defined
      Kata kata = Kata.fromJson(wordMap);
      batch.insert('induk', kata.toJson());
    }
    final res = batch.commit();
    return res;
  }

  // Insert kata dari tabel turunan_kata
  createWords2(List<Map<String, dynamic>> listWord) async {
    final db = await database;
    Batch batch = db.batch();

    for (var wordMap in listWord) {
      //assuming you have 'Cities' class defined
      Kata2 kata = Kata2.fromJson(wordMap);
      batch.insert('turunan_kata', kata.toJson());
    }
    final res = batch.commit();
    return res;
  }

  // Insert kata dari tabel turunan_mkn
  createWords3(List<Map<String, dynamic>> listWord) async {
    final db = await database;
    Batch batch = db.batch();

    for (var wordMap in listWord) {
      //assuming you have 'Cities' class defined
      Kata3 kata = Kata3.fromJson(wordMap);
      batch.insert('turunan_mkn', kata.toJson());
    }
    final res = batch.commit();
    return res;
  }

  // Insert kata dari tabel homonim
  createWords4(List<Map<String, dynamic>> listWord) async {
    final db = await database;
    Batch batch = db.batch();

    for (var wordMap in listWord) {
      //assuming you have 'Cities' class defined
      Kata4 kata = Kata4.fromJson(wordMap);
      batch.insert('homonim', kata.toJson());
    }
    final res = batch.commit();
    return res;
  }

  // Delete kata dari tabel induk
  Future<int> deleteAllWords() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM induk');
    return res;
  }

  // Delete kata dari tabel turunan_kata
  Future<int> deleteAllWords2() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM turunan_kata');
    return res;
  }

  // Delete kata dari tabel turunan_makna
  Future<int> deleteAllWords3() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM turunan_mkn');
    return res;
  }

  // Delete kata dari tabel kata_combined
  Future<int> deleteAllWords4() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM kata_combined');
    return res;
  }

  // Delete kata dari tabel homonim
  Future<int> deleteAllWords5() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM homonim');
    return res;
  }

  Future<List<Kata2>> getAllWords() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM turunan_kata");

    List<Kata2> list =
        res.isNotEmpty ? res.map((c) => Kata2.fromJson(c)).toList() : [];
    return list;
  }

  Future<List<KataCombine>> getWord2() async {
    final db = await database;
    final List<Map<String, Object?>> res;

    res = await db.rawQuery('''
      SELECT * FROM kata_combined
    ''');

    List<KataCombine> list =
        res.isNotEmpty ? res.map((c) => KataCombine.fromJson(c)).toList() : [];
    return list;
  }

  Future<List<Map<String, dynamic>>> _initialSearch(String x) async {
    final db = await database;

    final res = await db.rawQuery("""
    SELECT kata_combined.kode AS kode, kata_combined.id_tk AS id_tk, NULL AS id_hmn, kata_combined.arti AS arti 
    FROM kata_combined 
    WHERE kata_combined.arti LIKE "%$x%" 

    UNION ALL 

    SELECT turunan_mkn.kode AS kode, turunan_mkn.id_tk AS id_tk, turunan_mkn.id_hmn AS id_hmn, turunan_mkn.arti_tm AS arti 
    FROM turunan_mkn 
    WHERE turunan_mkn.arti_tm LIKE "%$x%" 

    UNION ALL 

    SELECT homonim.kode AS kode, NULL AS id_tk, homonim.id_hmn AS id_hmn, homonim.arti_hmn AS arti 
    FROM homonim 
    WHERE homonim.arti_hmn LIKE "%$x%"
  """);

    return res;
  }

  Future<List<KataCombine>> _fetchDataByInitialSearchResults(
      List<Map<String, dynamic>> initialResults) async {
    final db = await database;

    List<String> kodeIds = [];
    List<String> tkIds = [];

    initialResults.forEach((result) {
      if (result['kode'] != null) {
        kodeIds.add(result['kode'] as String);
      }
      if (result['id_tk'] != null) {
        tkIds.add(result['id_tk'] as String);
      }
    });

    if (kodeIds.isEmpty && tkIds.isEmpty) {
      return [];
    }

    List<KataCombine> allResults = [];

    // Memisahkan kodeIds dan tkIds menjadi batch yang lebih kecil
    for (int i = 0; i < kodeIds.length; i += 999) {
      List<String> batchKode = kodeIds.sublist(
          i, i + 999 > kodeIds.length ? kodeIds.length : i + 999);
      String placeholders = List.filled(batchKode.length, '?').join(',');

      List<Map<String, dynamic>> batchResults = await db.rawQuery(
        "SELECT * FROM kata_combined WHERE kode IN ($placeholders)",
        batchKode,
      );

      allResults.addAll(
          batchResults.map((map) => KataCombine.fromJson(map)).toList());
    }

    for (int i = 0; i < tkIds.length; i += 999) {
      List<String> batchTk =
          tkIds.sublist(i, i + 999 > tkIds.length ? tkIds.length : i + 999);
      String placeholders = List.filled(batchTk.length, '?').join(',');

      List<Map<String, dynamic>> batchResults = await db.rawQuery(
        "SELECT * FROM kata_combined WHERE id_tk IN ($placeholders)",
        batchTk,
      );

      allResults.addAll(
          batchResults.map((map) => KataCombine.fromJson(map)).toList());
    }

    return allResults;
  }

  Future<List<KataCombine>> getWord(String x, String textFrom) async {
    if (textFrom == "Jambi") {
      final db = await database;
      final res = await db.rawQuery("""
      SELECT DISTINCT kata_combined.* 
      FROM kata_combined
      LEFT JOIN homonim ON kata_combined.kode = homonim.kode
      WHERE kata_combined.kata LIKE "%$x%" 
        OR kata_combined.pemerian LIKE "%$x%"
        OR homonim.pemerian_hmn LIKE "%$x%"
    """);

      return res.isNotEmpty
          ? res.map((c) => KataCombine.fromJson(c)).toList()
          : [];
    } else {
      final initialResults = await _initialSearch(x);

      if (initialResults.isEmpty) {
        return [];
      }

      return await _fetchDataByInitialSearchResults(initialResults);
    }
  }

  Future<Map<String, List<Map<String, dynamic>>>> getAllKata(
      String? kataJambiTk) async {
    final db = await database;

    final kataQuery = await db.rawQuery("""
      SELECT 
          turunan_kata.*, 
          COALESCE(induk.kata_jambi, homonim.kata_jambi_hmn) AS kata_jambi
      FROM 
          turunan_kata
      LEFT JOIN 
          induk ON turunan_kata.kode = induk.kode
      LEFT JOIN 
          (SELECT id_hmn, kata_jambi_hmn FROM homonim) AS homonim 
          ON turunan_kata.id_hmn = homonim.id_hmn
      WHERE 
          turunan_kata.kata_jambi_tk = ?;
      """, [kataJambiTk]);

    if (kataQuery.isNotEmpty) {
      final idTk = kataQuery.first['id_tk'];

      final turunanMaknaQuery = await db.rawQuery("""
        SELECT 
        turunan_mkn.turunan_makna AS turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm AS kelas_kata_tm, turunan_mkn.ragam_tm AS ragam_tm, turunan_mkn.arti_tm AS arti_tm, turunan_mkn.cth_tm AS cth_tm, turunan_mkn.arti_cth_tm AS arti_cth_tm 
      FROM 
        turunan_mkn 
      WHERE 
        turunan_mkn.id_tk = ?
      """, [idTk]);

      return {
        'turunan_kata': kataQuery,
        'turunan_makna': turunanMaknaQuery,
      };
    } else {
      return {
        'turunan_kata': [],
        'turunan_makna': [],
      };
    }
  }

  Future<Map<String, List<Map<String, dynamic>>>> getResults3(
      String? dataId, String? dataKode) async {
    final db = await database;

    // Pastikan dataId dan dataKode tidak null atau kosong
    if ((dataId == null || dataId.isEmpty) &&
        (dataKode == null || dataKode.isEmpty)) {
      return {
        'turunan_makna': [],
        'kata_jambi_tk': [],
        'kata_jambi_gk': [],
        'homonim': [],
        'kata_jambi': []
      };
    }

    List<Map<String, dynamic>> result1 = [];
    List<Map<String, dynamic>> result2 = [];
    List<Map<String, dynamic>> result3 = [];
    List<Map<String, dynamic>> result4 = [];
    List<Map<String, dynamic>> result5 = [];

    if (dataId != null && dataId.isNotEmpty) {
      result1 = await db.rawQuery(
          "SELECT turunan_mkn.turunan_makna AS turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm AS kelas_kata_tm, turunan_mkn.ragam_tm AS ragam_tm, turunan_mkn.arti_tm AS arti_tm, turunan_mkn.cth_tm AS cth_tm, turunan_mkn.arti_cth_tm AS arti_cth_tm FROM turunan_mkn WHERE turunan_mkn.id_tk = ?",
          [dataId]);
      result5 = await db.rawQuery("""
          SELECT 
              turunan_kata.*, 
              COALESCE(induk.kata_jambi, homonim.kata_jambi_hmn) AS kata_jambi
          FROM 
              turunan_kata
          LEFT JOIN 
              induk ON turunan_kata.kode = induk.kode
          LEFT JOIN 
              homonim ON turunan_kata.id_hmn = homonim.id_hmn
          WHERE 
              turunan_kata.id_tk = ?;
      """, [dataId]);
    } else if (dataKode != null && dataKode.isNotEmpty) {
      result1 = await db.rawQuery("""
      SELECT 
        turunan_mkn.turunan_makna AS turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm AS kelas_kata_tm, turunan_mkn.ragam_tm AS ragam_tm, turunan_mkn.arti_tm AS arti_tm, turunan_mkn.cth_tm AS cth_tm, turunan_mkn.arti_cth_tm AS arti_cth_tm 
      FROM 
        turunan_mkn 
      WHERE 
        turunan_mkn.kode = ?
      """, [dataKode]);

      result2 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'kt'
      """, [dataKode]);

      result3 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'gk'
      """, [dataKode]);

      result4 = await db.rawQuery("""
      SELECT 
        homonim.* 
      FROM  
        homonim 
      WHERE 
        homonim.kode = ?
      """, [dataKode]);
    }

    return {
      'turunan_makna': result1,
      'kata_jambi_kt': result2,
      'kata_jambi_gk': result3,
      'homonim': result4,
      'kata_jambi': result5
    };
  }

  Future<Map<String, List<Map<String, dynamic>>>> getResults4(
      String? dataId, String? dataKode) async {
    final db = await database;

    // Pastikan dataId dan dataKode tidak null atau kosong
    if ((dataId == null || dataId.isEmpty) &&
        (dataKode == null || dataKode.isEmpty)) {
      return {
        'turunan_makna': [],
        'kata_jambi_tk': [],
        'kata_jambi_gk': [],
        'homonim': [],
        'kata_jambi': []
      };
    }

    List<Map<String, dynamic>> result1 = [];
    List<Map<String, dynamic>> result2 = [];
    List<Map<String, dynamic>> result3 = [];
    List<Map<String, dynamic>> result4 = [];
    List<Map<String, dynamic>> result5 = [];

    if (dataId != null && dataId.isNotEmpty) {
      result1 = await db.rawQuery("""
          SELECT turunan_mkn.*
          FROM induk
          LEFT JOIN homonim ON induk.kode = homonim.kode
          LEFT JOIN turunan_mkn ON induk.kode = turunan_mkn.kode
          WHERE homonim.id_hmn = ?
          """, [dataId]);
      result5 = await db.rawQuery("""
          SELECT induk.* 
          FROM induk
          LEFT JOIN homonim ON induk.kode = homonim.kode
          WHERE homonim.id_hmn = ?;
      """, [dataId]);
      var kode2 = result5.first['kode'];
      result4 =
          await db.rawQuery('SELECT * FROM homonim WHERE kode = ?', [kode2]);

      result2 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'kt'
      """, [kode2]);

      result3 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'gk'
      """, [kode2]);
    } else if (dataKode != null && dataKode.isNotEmpty) {
      result1 = await db.rawQuery("""
      SELECT 
        turunan_mkn.turunan_makna AS turunan_makna, turunan_mkn.no_tm AS no_tm, turunan_mkn.kelas_kata_tm AS kelas_kata_tm, turunan_mkn.ragam_tm AS ragam_tm, turunan_mkn.arti_tm AS arti_tm, turunan_mkn.cth_tm AS cth_tm, turunan_mkn.arti_cth_tm AS arti_cth_tm 
      FROM 
        turunan_mkn 
      WHERE 
        turunan_mkn.kode = ?
      """, [dataKode]);

      result2 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'kt'
      """, [dataKode]);

      result3 = await db.rawQuery("""
      SELECT 
        turunan_kata.kata_jambi_tk AS kata_jambi_tk 
      FROM  
        turunan_kata  
      WHERE 
        turunan_kata.kode = ? AND turunan_kata.sublema = 'gk'
      """, [dataKode]);

      result4 = await db.rawQuery("""
      SELECT 
        homonim.* 
      FROM  
        homonim 
      WHERE 
        homonim.kode = ?
      """, [dataKode]);

      result5 = await db.rawQuery("""
      SELECT 
        induk.* 
      FROM  
        induk 
      WHERE 
        induk.kode = ?
      """, [dataKode]);
    }

    return {
      'turunan_makna': result1,
      'kata_jambi_kt': result2,
      'kata_jambi_gk': result3,
      'homonim': result4,
      'kata_jambi': result5
    };
  }

  Future<List<Map<String, dynamic>>> gethomonimByKode(String? kode) async {
    final db = await database;
    return await db.rawQuery('SELECT * FROM homonim WHERE kode = ?', [kode]);
  }

  Future<List<Map<String, dynamic>>> getTurunanMaknaByIdHmn(
      String? idHmn) async {
    final db = await database;
    return await db
        .rawQuery('SELECT * FROM turunan_mkn WHERE id_hmn = ?', [idHmn]);
  }

  Future<List<Map<String, dynamic>>> getTurunanKataKTByIdHmn(
      String? idHmn) async {
    final db = await database;
    return await db.rawQuery(
        """SELECT * FROM turunan_kata WHERE id_hmn = ? AND sublema = 'kt'""",
        [idHmn]);
  }

  Future<List<Map<String, dynamic>>> getTurunanKataGKByIdHmn(
      String? idHmn) async {
    final db = await database;
    return await db.rawQuery(
        """SELECT * FROM turunan_kata WHERE id_hmn = ? AND sublema = 'gk'""",
        [idHmn]);
  }

  Future<List<KataCombine>> get3RandomWords() async {
    final db = await database;
    final res = await db.rawQuery("""
        SELECT kata AS kata, arti AS arti, arti_tm AS arti_tm FROM kata_combined 
        ORDER BY RANDOM() 
        LIMIT 10
        """);

    List<KataCombine> list =
        res.isNotEmpty ? res.map((c) => KataCombine.fromJson(c)).toList() : [];
    return list;
  }
}
