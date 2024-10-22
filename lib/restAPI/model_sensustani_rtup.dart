// ignore_for_file: non_constant_identifier_names

class SensusTaniRtup {
  final int id;
  final String kecamatan;
  final String rtup;
  final String pangan_rtup;
  final String horti_rtup;
  final String kebun_rtup;
  final String ternak_rtup;
  final String ikan_rtup;
  final String hutan_rtup;
  final String jasa_rtup;
  final String tahun;
  final String created_at;
  final String updated_at;

  const SensusTaniRtup({
    required this.id,
    required this.kecamatan,
    required this.rtup,
    required this.pangan_rtup,
    required this.horti_rtup,
    required this.kebun_rtup,
    required this.ternak_rtup,
    required this.ikan_rtup,
    required this.hutan_rtup,
    required this.jasa_rtup,
    required this.tahun,
    required this.created_at,
    required this.updated_at,

  });

  factory SensusTaniRtup.fromJson(Map<String, dynamic> json) {
    return SensusTaniRtup(
      id: json['id'],
      kecamatan: json['kecamatan'],
      rtup: json['rtup'],
      pangan_rtup: json['pangan_rtup'],
      horti_rtup: json['horti_rtup'],
      kebun_rtup: json['kebun_rtup'],
      ternak_rtup: json['ternak_rtup'],
      ikan_rtup: json['ikan_rtup'],
      hutan_rtup: json['hutan_rtup'],
      jasa_rtup: json['jasa_rtup'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at']);
    }
}
