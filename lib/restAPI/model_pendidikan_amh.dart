// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelAmh {
  final int id;
  final String nama;
  final String amh_lk;
  final String amh_pr;
  final String amh_total;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelAmh({
    required this.id,
    required this.nama,
    required this.amh_lk,
    required this.amh_pr,
    required this.amh_total,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelAmh.fromJson(Map<String, dynamic> json) {
    return ModelAmh(
        id: json['id'],
        nama: json['nama'],
        amh_lk: json['amh_lk'],
        amh_pr: json['amh_pr'],
        amh_total: json['amh_total'], 
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
