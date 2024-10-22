// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelSeriesInflasi {
  final int id;
  final String tahun;
  final String bulan;
  final String ihk;
  final String inflasi;
  final String yod;
  final String yoy;
  final String created_at;
  final String updated_at;

  const modelSeriesInflasi({
    required this.id,
    required this.tahun,
    required this.bulan,
    required this.inflasi,
    required this.ihk,
    required this.yod,
    required this.yoy,
    required this.created_at,
    required this.updated_at,
  });

  factory modelSeriesInflasi.fromJson(Map<String, dynamic> json) {
    return modelSeriesInflasi(
        id: json['id'],
        tahun: json['tahun'],
        bulan: json['bulan'],
        ihk: json['ihk'],
        inflasi: json['inflasi'],
        yod: json['yod'],
        yoy: json['yoy'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
