// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelMasak {
  final int id;
  final String rincian;
  final String persentase;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelMasak({
    required this.id,
    required this.rincian,
    required this.persentase,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelMasak.fromJson(Map<String, dynamic> json) {
    return ModelMasak(
        id: json['id'],
        rincian: json['rincian'],
        persentase: json['persentase'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
