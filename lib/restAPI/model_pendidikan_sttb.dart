// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelSttb {
  final int id;
  final String nama;
  final String sttb_lk;
  final String sttb_pr;
  final String sttb_total;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelSttb({
    required this.id,
    required this.nama,
    required this.sttb_lk,
    required this.sttb_pr,
    required this.sttb_total,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelSttb.fromJson(Map<String, dynamic> json) {
    return ModelSttb(
        id: json['id'],
        nama: json['nama'],
        sttb_lk: json['sttb_lk'],
        sttb_pr: json['sttb_pr'],
        sttb_total: json['sttb_total'], 
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
