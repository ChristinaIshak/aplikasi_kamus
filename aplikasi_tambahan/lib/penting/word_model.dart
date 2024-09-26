import 'dart:convert';

List<Kata> kataFromJson(String str) =>
    List<Kata>.from(json.decode(str).map((x) => Kata.fromJson(x)));

String kataToJson(List<Kata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

//merupakan representasi data yang diperoleh dari API
class Kata {
  String kode;
  String kata_jambi;
  String cara_baca;
  String kelas_kata;
  String ragam;
  String arti;
  String contoh;
  String penggal;
  String arti_cth;
  String pemerian;
  String penggal2;

  Kata({
    required this.kode,
    required this.kata_jambi,
    required this.cara_baca,
    required this.kelas_kata,
    required this.ragam,
    required this.arti,
    required this.contoh,
    required this.penggal,
    required this.arti_cth,
    required this.pemerian,
    required this.penggal2,
  });

  factory Kata.fromJson(Map<String, dynamic> json) => Kata(
        kode: json["kode"],
        kata_jambi: json["kata_jambi"] ?? "",
        cara_baca: json["cara_baca"] ?? "",
        kelas_kata: json["kelas_kata"] ?? "",
        ragam: json["ragam"] ?? "",
        arti: json["arti"] ?? "",
        contoh: json["contoh"] ?? "",
        penggal: json["penggal"] ?? "",
        arti_cth: json["arti_cth"] ?? "",
        pemerian: json["pemerian"] ?? "",
        penggal2: json["penggal2"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "kode": kode,
        "kata_jambi": kata_jambi,
        "cara_baca": cara_baca,
        "kelas_kata": kelas_kata,
        "ragam": ragam,
        "arti": arti,
        "contoh": contoh,
        "penggal": penggal,
        "arti_cth": arti_cth,
        "pemerian": pemerian,
        "penggal2": penggal2,
      };
}

class Kata2 {
  String id_tk;
  String kode;
  String kata_jambi_tk;
  String cara_baca_tk;
  String kelas_kata_tk;
  String ragam_tk;
  String arti_tk;
  String contoh_tk;
  String penggal_tk;
  String arti_cth_tk;
  String id_hmn;
  String sublema;

  Kata2({
    required this.id_tk,
    required this.kode,
    required this.kata_jambi_tk,
    required this.cara_baca_tk,
    required this.kelas_kata_tk,
    required this.ragam_tk,
    required this.arti_tk,
    required this.contoh_tk,
    required this.penggal_tk,
    required this.arti_cth_tk,
    required this.id_hmn,
    required this.sublema,
  });

  factory Kata2.fromJson(Map<String, dynamic> json) => Kata2(
        id_tk: json["id_tk"],
        kode: json["kode"] ?? "",
        kata_jambi_tk: json["kata_jambi_tk"] ?? "",
        cara_baca_tk: json["cara_baca_tk"] ?? "",
        kelas_kata_tk: json["kelas_kata_tk"] ?? "",
        ragam_tk: json["ragam_tk"] ?? "",
        arti_tk: json["arti_tk"] ?? "",
        contoh_tk: json["contoh_tk"] ?? "",
        penggal_tk: json["penggal_tk"] ?? "",
        arti_cth_tk: json["arti_cth_tk"] ?? "",
        id_hmn: json["id_hmn"] ?? "",
        sublema: json["sublema"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id_tk": id_tk,
        "kode": kode,
        "kata_jambi_tk": kata_jambi_tk,
        "cara_baca_tk": cara_baca_tk,
        "kelas_kata_tk": kelas_kata_tk,
        "ragam_tk": ragam_tk,
        "arti_tk": arti_tk,
        "contoh_tk": contoh_tk,
        "penggal_tk": penggal_tk,
        "arti_cth_tk": arti_cth_tk,
        "id_hmn": id_hmn,
        "sublema": sublema,
      };
}

class Kata3 {
  String id_tm;
  String id_tk;
  String kode;
  String turunan_makna;
  String kelas_kata_tm;
  String ragam_tm;
  String arti_tm;
  String cth_tm;
  String no_tm;
  String arti_cth_tm;
  String id_hmn;

  Kata3({
    required this.id_tm,
    required this.id_tk,
    required this.kode,
    required this.turunan_makna,
    required this.kelas_kata_tm,
    required this.ragam_tm,
    required this.arti_tm,
    required this.cth_tm,
    required this.no_tm,
    required this.arti_cth_tm,
    required this.id_hmn,
  });

  factory Kata3.fromJson(Map<String, dynamic> json) => Kata3(
        id_tm: json["id_tm"],
        id_tk: json["id_tk"] ?? "",
        kode: json["kode"] ?? "",
        turunan_makna: json["turunan_makna"] ?? "",
        kelas_kata_tm: json["kelas_kata_tm"] ?? "",
        ragam_tm: json["ragam_tm"] ?? "",
        arti_tm: json["arti_tm"] ?? "",
        cth_tm: json["cth_tm"] ?? "",
        no_tm: json["no_tm"] ?? "",
        arti_cth_tm: json["arti_cth_tm"] ?? "",
        id_hmn: json["id_hmn"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id_tm": id_tm,
        "id_tk": id_tk,
        "kode": kode,
        "turunan_makna": turunan_makna,
        "kelas_kata_tm": kelas_kata_tm,
        "ragam_tm": ragam_tm,
        "arti_tm": arti_tm,
        "cth_tm": cth_tm,
        "no_tm": no_tm,
        "arti_cth_tm": arti_cth_tm,
        "id_hmn": id_hmn,
      };
}

class Kata4 {
  String id_hmn;
  String kode;
  String kata_jambi_hmn;
  String penggal_hmn;
  String cara_baca_hmn;
  String pemerian_hmn;
  String penggal2_hmn;
  String kelas_kata_hmn;
  String ragam_hmn;
  String arti_hmn;
  String contoh_hmn;
  String arti_cth_hmn;
  String no_hmn;

  Kata4({
    required this.id_hmn,
    required this.kode,
    required this.kata_jambi_hmn,
    required this.penggal_hmn,
    required this.cara_baca_hmn,
    required this.pemerian_hmn,
    required this.penggal2_hmn,
    required this.kelas_kata_hmn,
    required this.ragam_hmn,
    required this.arti_hmn,
    required this.contoh_hmn,
    required this.arti_cth_hmn,
    required this.no_hmn,
  });

  factory Kata4.fromJson(Map<String, dynamic> json) => Kata4(
        id_hmn: json["id_hmn"],
        kode: json["kode"] ?? "",
        kata_jambi_hmn: json["kata_jambi_hmn"] ?? "",
        penggal_hmn: json["penggal_hmn"] ?? "",
        cara_baca_hmn: json["cara_baca_hmn"] ?? "",
        pemerian_hmn: json["pemerian_hmn"] ?? "",
        penggal2_hmn: json["penggal2_hmn"] ?? "",
        kelas_kata_hmn: json["kelas_kata_hmn"] ?? "",
        ragam_hmn: json["ragam_hmn"] ?? "",
        arti_hmn: json["arti_hmn"] ?? "",
        contoh_hmn: json["contoh_hmn"] ?? "",
        arti_cth_hmn: json["arti_cth_hmn"] ?? "",
        no_hmn: json["no_hmn"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id_hmn": id_hmn,
        "kode": kode,
        "kata_jambi_hmn": kata_jambi_hmn,
        "penggal_hmn": penggal_hmn,
        "cara_baca_hmn": cara_baca_hmn,
        "pemerian_hmn": pemerian_hmn,
        "penggal2_hmn": penggal2_hmn,
        "kelas_kata_hmn": kelas_kata_hmn,
        "ragam_hmn": ragam_hmn,
        "arti_hmn": arti_hmn,
        "contoh_hmn": contoh_hmn,
        "arti_cth_hmn": arti_cth_hmn,
        "no_hmn": no_hmn,
      };
}

class KataCombine {
  String kata;
  String kelas_kata;
  String ragam;
  String kode;
  String id_tk;
  String arti;
  String turunan_makna;
  String penggal;
  String arti_cth;
  String cara_baca;
  String contoh;
  String id_hmn;
  String kata_jambi_hmn;
  String pemerian_hmn;
  String arti_hmn;
  String pemerian;
  String penggal2;
  String no_tm;
  String kelas_kata_tm;
  String ragam_tm;
  String arti_tm;

  KataCombine({
    required this.kata,
    required this.kelas_kata,
    required this.ragam,
    required this.kode,
    required this.id_tk,
    required this.arti,
    required this.turunan_makna,
    required this.penggal,
    required this.arti_cth,
    required this.cara_baca,
    required this.contoh,
    required this.id_hmn,
    required this.kata_jambi_hmn,
    required this.pemerian_hmn,
    required this.arti_hmn,
    required this.pemerian,
    required this.penggal2,
    required this.no_tm,
    required this.kelas_kata_tm,
    required this.ragam_tm,
    required this.arti_tm,
  });

  factory KataCombine.fromJson(Map<String, dynamic> json) => KataCombine(
        kata: json["kata"],
        kelas_kata: json["kelas_kata"] ?? "",
        ragam: json["ragam"] ?? "",
        kode: json["kode"] ?? "",
        id_tk: json["id_tk"] ?? "",
        arti: json["arti"] ?? "",
        turunan_makna: json["turunan_makna"] ?? "",
        penggal: json["penggal"] ?? "",
        arti_cth: json["arti_cth"] ?? "",
        cara_baca: json["cara_baca"] ?? "",
        contoh: json["contoh"] ?? "",
        id_hmn: json["id_hmn"] ?? "",
        kata_jambi_hmn: json["kata_jambi_hmn"] ?? "",
        pemerian_hmn: json["pemerian_hmn"] ?? "",
        arti_hmn: json["arti_hmn"] ?? "",
        pemerian: json["pemerian"] ?? "",
        penggal2: json["penggal2"] ?? "",
        no_tm: json["no_tm"] ?? "",
        kelas_kata_tm: json["kelas_kata_tm"] ?? "",
        ragam_tm: json["ragam_tm"] ?? "",
        arti_tm: json["arti_tm"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "kata": kata,
        "kelas_kata": kelas_kata,
        "ragam": ragam,
        "kode": kode,
        "id_tk": id_tk,
        "arti": arti,
        "turunan_makna": turunan_makna,
        "penggal": penggal,
        "arti_cth": arti_cth,
        "cara_baca": cara_baca,
        "contoh": contoh,
        "id_hmn": id_hmn,
        "kata_jambi_hmn": kata_jambi_hmn,
        "pemerian_hmn": pemerian_hmn,
        "arti_hmn": arti_hmn,
        "pemerian": pemerian,
        "penggal2": penggal2,
        "no_tm": no_tm,
        "kelas_kata_tm": kelas_kata_tm,
        "ragam_tm": ragam_tm,
        "arti_tm": arti_tm,
      };
}
