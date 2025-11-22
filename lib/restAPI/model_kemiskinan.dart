// ignore_for_file: non_constant_identifier_names

class ModelKemiskinan {
  final int id;
  final String pddk_mskn;
  final String p0;
  final String p1;
  final String p2;
  final String gk;
  final String created_at;
  final String updated_at;
  final String tahun;

  const ModelKemiskinan({
    required this.id,
    required this.pddk_mskn,
    required this.p0,
    required this.p1,
    required this.p2,
    required this.gk,
    required this.created_at,
    required this.updated_at,
    required this.tahun,
  });

  factory ModelKemiskinan.fromJson(Map<String, dynamic> json) {
    return ModelKemiskinan(
        id: json['id'],
        pddk_mskn: json['pddk_mskn'],
        p0: json['p0'],
        p1: json['p1'],
        p2: json['p2'],
        gk: json['gk'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
        
  }
}
