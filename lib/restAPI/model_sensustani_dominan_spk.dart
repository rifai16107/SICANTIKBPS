// ignore_for_file: non_constant_identifier_names

class SensusTaniDominanSpk {
  final int id;
  final String wilayah;
  final String terbanyak_1;
  final String terbanyak_2;
  final String terbanyak_3;
  final String terbanyak_4;
  final String terbanyak_5;
  final String terbanyak_6;
  final String terbanyak_7;
  final String terbanyak_8;
  final String terbanyak_9;
  final String terbanyak_10;
  final String sapi;
  final String kerbau;
  final String tahun;

  const SensusTaniDominanSpk({
    required this.id,
    required this.wilayah,
    required this.terbanyak_1,
    required this.terbanyak_2,
    required this.terbanyak_3,
    required this.terbanyak_4,
    required this.terbanyak_5,
    required this.terbanyak_6,
    required this.terbanyak_7,
    required this.terbanyak_8,
    required this.terbanyak_9,
    required this.terbanyak_10,
    required this.sapi,
    required this.kerbau,
    required this.tahun,
  });

  factory SensusTaniDominanSpk.fromJson(Map<String, dynamic> json) {
    return SensusTaniDominanSpk(
        id: json['id'],
        wilayah: json['wilayah'],
        terbanyak_1: json['terbanyak_1'],
        terbanyak_2: json['terbanyak_2'],
        terbanyak_3: json['terbanyak_3'],
        terbanyak_4: json['terbanyak_4'],
        terbanyak_5: json['terbanyak_5'],
        terbanyak_6: json['terbanyak_6'],
        terbanyak_7: json['terbanyak_7'],
        terbanyak_8: json['terbanyak_8'],
        terbanyak_9: json['terbanyak_9'],
        terbanyak_10: json['terbanyak_10'],
        sapi: json['sapi'],
        kerbau: json['kerbau'],
        tahun: json['tahun']);
  }
}
