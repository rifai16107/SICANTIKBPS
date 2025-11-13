// ignore_for_file: non_constant_identifier_names

class JumlahPendudukKecamatan {
  final int id;
  final String kecamatan;
  final String lk;
  final String pr;
  final String lkreg;
  final String prreg;
  final String created_at;
  final String updated_at;
  final String tahun;
  final String lk1;
  final String pr1;
  final String lk2;
  final String pr2;
  final String lk3;
  final String pr3;
  final String lk4;
  final String pr4;
  final String lkreg1;
  final String prreg1;
  final String lkreg2;
  final String prreg2;
  final String lkreg3;
  final String prreg3;
  final String lkreg4;
  final String prreg4;
  final String tahun_123;

  const JumlahPendudukKecamatan({
    required this.id,
    required this.kecamatan,
    required this.lk,
    required this.pr,
    required this.lkreg,
    required this.prreg,
    required this.created_at,
    required this.updated_at,
    required this.tahun,
    required this.lk1,
    required this.pr1,
    required this.lk2,
    required this.pr2,
    required this.lk3,
    required this.pr3,
    required this.lk4,
    required this.pr4,
    required this.lkreg1,
    required this.prreg1,
    required this.lkreg2,
    required this.prreg2,
    required this.lkreg3,
    required this.prreg3,
    required this.lkreg4,
    required this.prreg4,
    required this.tahun_123,
  });

  factory JumlahPendudukKecamatan.fromJson(Map<String, dynamic> json) {
    return JumlahPendudukKecamatan(
      id: json['id'],
      kecamatan: json['kecamatan'],
      lk: json['lk'],
      pr: json['pr'],
      lkreg: json['lkreg'],
      prreg: json['prreg'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      tahun: json['tahun'],
      lk1: json['lk1'],
      pr1: json['pr1'],
      lk2: json['lk2'],
      pr2: json['pr2'],
      lk3: json['lk3'],
      pr3: json['pr3'],
      lk4: json['lk4'],
      pr4: json['pr4'],
      lkreg1: json['lkreg1'],
      prreg1: json['prreg1'],
      lkreg2: json['lkreg2'],
      prreg2: json['prreg2'],
      lkreg3: json['lkreg3'],
      prreg3: json['prreg3'],
      lkreg4: json['lkreg4'],
      prreg4: json['prreg4'],
      tahun_123: json['tahun_123'],
    );
  }
}
