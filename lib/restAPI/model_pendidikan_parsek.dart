// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelParsek {
  final int id;
  final String nama;
  final String parsek_lk;
  final String parsek_pr;
  final String parsek_total;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelParsek({
    required this.id,
    required this.nama,
    required this.parsek_lk,
    required this.parsek_pr,
    required this.parsek_total,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelParsek.fromJson(Map<String, dynamic> json) {
    return ModelParsek(
        id: json['id'],
        nama: json['nama'],
        parsek_lk: json['parsek_lk'],
        parsek_pr: json['parsek_pr'],
        parsek_total: json['parsek_total'], 
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
