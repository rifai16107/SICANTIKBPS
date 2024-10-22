// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelAps {
  final int id;
  final String nama;
  final String aps_lk;
  final String aps_pr;
  final String aps_total;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelAps({
    required this.id,
    required this.nama,
    required this.aps_lk,
    required this.aps_pr,
    required this.aps_total,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelAps.fromJson(Map<String, dynamic> json) {
    return ModelAps(
        id: json['id'],
        nama: json['nama'],
        aps_lk: json['aps_lk'],
        aps_pr: json['aps_pr'],
        aps_total: json['aps_total'], 
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
