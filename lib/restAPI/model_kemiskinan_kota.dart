// ignore_for_file: non_constant_identifier_names

class ModelKemiskinanKota {
  final int id;
  final String kabkota;
  final String pddk_mskn;
  final String p0;
  final String p1;
  final String p2;
  final String gk;
  final String pddk_mskn_n4;
  final String p0_n4;
  final String p1_n4;
  final String p2_n4;
  final String gk_n4;
  final String pddk_mskn_n3;
  final String p0_n3;
  final String p1_n3;
  final String p2_n3;
  final String gk_n3;
  final String pddk_mskn_n2;
  final String p0_n2;
  final String p1_n2;
  final String p2_n2;
  final String gk_n2;
  final String pddk_mskn_n1;
  final String p0_n1;
  final String p1_n1;
  final String p2_n1;
  final String gk_n1;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelKemiskinanKota({
    required this.id,
    required this.kabkota,
    required this.pddk_mskn,
    required this.p0,
    required this.p1,
    required this.p2,
    required this.gk,
    required this.pddk_mskn_n4,
    required this.p0_n4,
    required this.p1_n4,
    required this.p2_n4,
    required this.gk_n4,
    required this.pddk_mskn_n3,
    required this.p0_n3,
    required this.p1_n3,
    required this.p2_n3,
    required this.gk_n3,
    required this.pddk_mskn_n2,
    required this.p0_n2,
    required this.p1_n2,
    required this.p2_n2,
    required this.gk_n2,
    required this.pddk_mskn_n1,
    required this.p0_n1,
    required this.p1_n1,
    required this.p2_n1,
    required this.gk_n1,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelKemiskinanKota.fromJson(Map<String, dynamic> json) {
    return ModelKemiskinanKota(
        id: json['id'],
        kabkota: json['kabkota'],
        pddk_mskn: json['pddk_mskn'],
        p0: json['p0'],
        p1: json['p1'],
        p2: json['p2'],
        gk: json['gk'],
        pddk_mskn_n4: json['pddk_mskn_n4'],
        p0_n4: json['p0_n4'],
        p1_n4: json['p1_n4'],
        p2_n4: json['p2_n4'],
        gk_n4: json['gk_n4'],
        pddk_mskn_n3: json['pddk_mskn_n3'],
        p0_n3: json['p0_n3'],
        p1_n3: json['p1_n3'],
        p2_n3: json['p2_n3'],
        gk_n3: json['gk_n3'],
        pddk_mskn_n2: json['pddk_mskn_n2'],
        p0_n2: json['p0_n2'],
        p1_n2: json['p1_n2'],
        p2_n2: json['p2_n2'],
        gk_n2: json['gk_n2'],
        pddk_mskn_n1: json['pddk_mskn_n1'],
        p0_n1: json['p0_n1'],
        p1_n1: json['p1_n1'],
        p2_n1: json['p2_n1'],
        gk_n1: json['gk_n1'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
