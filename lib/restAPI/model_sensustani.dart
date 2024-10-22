// ignore_for_file: non_constant_identifier_names

class SensusTani {
  final int id;
  final String wilayah;
  final String rtup;
  final String padi_rtup;
  final String horti_rtup;
  final String kebun_rtup;
  final String ternak_rtup;
  final String ikan_rtup;
  final String hutan_rtup;
  final String jasa_rtup;
  final String utp;
  final String padi_utp;
  final String horti_utp;
  final String kebun_utp;
  final String ternak_utp;
  final String ikan_utp;
  final String hutan_utp;
  final String jasa_utp;
  final String tahun;
  final String created_at;
  final String updated_at;

  const SensusTani({
    required this.id,
    required this.wilayah,
    required this.rtup,
    required this.padi_rtup,
    required this.horti_rtup,
    required this.kebun_rtup,
    required this.ternak_rtup,
    required this.ikan_rtup,
    required this.hutan_rtup,
    required this.jasa_rtup,
    required this.utp,
    required this.padi_utp,
    required this.horti_utp,
    required this.kebun_utp,
    required this.ternak_utp,
    required this.ikan_utp,
    required this.hutan_utp,
    required this.jasa_utp,
    required this.tahun,
    required this.created_at,
    required this.updated_at,

  });

  factory SensusTani.fromJson(Map<String, dynamic> json) {
    return SensusTani(
      id: json['id'],
      wilayah: json['wilayah'],
      rtup: json['rtup'],
      padi_rtup: json['padi_rtup'],
      horti_rtup: json['horti_rtup'],
      kebun_rtup: json['kebun_rtup'],
      ternak_rtup: json['ternak_rtup'],
      ikan_rtup: json['ikan_rtup'],
      hutan_rtup: json['hutan_rtup'],
      jasa_rtup: json['jasa_rtup'],
      utp: json['utp'],
      padi_utp: json['padi_utp'],
      horti_utp: json['horti_utp'],
      kebun_utp: json['kebun_utp'],
      ternak_utp: json['ternak_utp'],
      ikan_utp: json['ikan_utp'],
      hutan_utp: json['hutan_utp'],
      jasa_utp: json['jasa_utp'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at']);
    }
}
