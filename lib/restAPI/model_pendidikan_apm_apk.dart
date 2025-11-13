// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelApmApk {
  final int id;
  final String nama;
  final String apm;
  final String apk;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelApmApk({
    required this.id,
    required this.nama,
    required this.apm,
    required this.apk,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelApmApk.fromJson(Map<String, dynamic> json) {
    return ModelApmApk(
        id: json['id'],
        nama: json['nama'],
        apm: json['apm'],
        apk: json['apk'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
