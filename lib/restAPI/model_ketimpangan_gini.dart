// ignore_for_file: non_constant_identifier_names

class ModelKetimpanganGini {
  final int id;
  final String wilayah;
  final String gini2021;
  final String gini2022;
  final String gini2023;
  final String created_at;
  final String updated_at;
  final String tahun;

ModelKetimpanganGini({
    required this.id,
    required this.wilayah,
    required this.gini2021,
    required this.gini2022,
    required this.gini2023,
    required this.created_at,
    required this.updated_at,
    required this.tahun,
  });

  factory ModelKetimpanganGini.fromJson(Map<String, dynamic> json) {
    return ModelKetimpanganGini(
        id: json['id'],
        wilayah: json['wilayah'],
        gini2021: json['gini2021'],
        gini2022: json['gini2022'],
        gini2023: json['gini2023'],
        created_at: json['created_at'],
        updated_at: json['updated_at'],
        tahun: json['tahun']);
  }
}
