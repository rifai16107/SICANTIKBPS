// ignore_for_file: non_constant_identifier_names

class ModelSkdTriwulanan {
  final int id;
  final String wilayah;
  final String trw1n1_ipkp;
  final String trw1n1_ipak;
  final String trw2n1_ipkp;
  final String trw2n1_ipak;
  final String trw3n1_ipkp;
  final String trw3n1_ipak;
  final String trw4n1_ipkp;
  final String trw4n1_ipak;
  final String trw1n2_ipkp;
  final String trw1n2_ipak;
  final String trw2n2_ipkp;
  final String trw2n2_ipak;
  final String trw3n2_ipkp;
  final String trw3n2_ipak;
  final String trw4n2_ipkp;
  final String trw4n2_ipak;
  final String trw1n3_ipkp;
  final String trw1n3_ipak;
  final String trw2n3_ipkp;
  final String trw2n3_ipak;
  final String trw3n3_ipkp;
  final String trw3n3_ipak;
  final String trw4n3_ipkp;
  final String trw4n3_ipak;
  final String tahun;
  final String created_at;
  final String updated_at;

  ModelSkdTriwulanan({
    required this.id,
    required this.wilayah,
    required this.trw1n1_ipkp,
    required this.trw1n1_ipak,
    required this.trw2n1_ipkp,
    required this.trw2n1_ipak,
    required this.trw3n1_ipkp,
    required this.trw3n1_ipak,
    required this.trw4n1_ipkp,
    required this.trw4n1_ipak,
    required this.trw1n2_ipkp,
    required this.trw1n2_ipak,
    required this.trw2n2_ipkp,
    required this.trw2n2_ipak,
    required this.trw3n2_ipkp,
    required this.trw3n2_ipak,
    required this.trw4n2_ipkp,
    required this.trw4n2_ipak,
    required this.trw1n3_ipkp,
    required this.trw1n3_ipak,
    required this.trw2n3_ipkp,
    required this.trw2n3_ipak,
    required this.trw3n3_ipkp,
    required this.trw3n3_ipak,
    required this.trw4n3_ipkp,
    required this.trw4n3_ipak,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelSkdTriwulanan.fromJson(Map<String, dynamic> json) {
    return ModelSkdTriwulanan(
      id: json['id'],
      wilayah: json['wilayah'],
      trw1n1_ipkp: json['trw1n1_ipkp'],
      trw1n1_ipak: json['trw1n1_ipak'],
      trw2n1_ipkp: json['trw2n1_ipkp'],
      trw2n1_ipak: json['trw2n1_ipak'],
      trw3n1_ipkp: json['trw3n1_ipkp'],
      trw3n1_ipak: json['trw3n1_ipak'],
      trw4n1_ipkp: json['trw4n1_ipkp'],
      trw4n1_ipak: json['trw4n1_ipak'],
      trw1n2_ipkp: json['trw1n2_ipkp'],
      trw1n2_ipak: json['trw1n2_ipak'],
      trw2n2_ipkp: json['trw2n2_ipkp'],
      trw2n2_ipak: json['trw2n2_ipak'],
      trw3n2_ipkp: json['trw3n2_ipkp'],
      trw3n2_ipak: json['trw3n2_ipak'],
      trw4n2_ipkp: json['trw4n2_ipkp'],
      trw4n2_ipak: json['trw4n2_ipak'],
      trw1n3_ipkp: json['trw1n3_ipkp'],
      trw1n3_ipak: json['trw1n3_ipak'],
      trw2n3_ipkp: json['trw2n3_ipkp'],
      trw2n3_ipak: json['trw2n3_ipak'],
      trw3n3_ipkp: json['trw3n3_ipkp'],
      trw3n3_ipak: json['trw3n3_ipak'],
      trw4n3_ipkp: json['trw4n3_ipkp'],
      trw4n3_ipak: json['trw4n3_ipak'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
