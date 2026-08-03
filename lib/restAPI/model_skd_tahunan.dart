// ignore_for_file: non_constant_identifier_names

class ModelSkdTahunan {
  final int id;
  final String wilayah;
  final String ikk_n1;
  final String ipak_n1;
  final String ikk_n2;
  final String ipak_n2;
  final String ikk_n3;
  final String ipak_n3;
  final String ikk_n4;
  final String ipak_n4;
  final String created_at;
  final String updated_at;
  final String tahun;

  ModelSkdTahunan({
    required this.id,
    required this.wilayah,
    required this.ikk_n1,
    required this.ipak_n1,
    required this.ikk_n2,
    required this.ipak_n2,
    required this.ikk_n3,
    required this.ipak_n3,
    required this.ikk_n4,
    required this.ipak_n4,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelSkdTahunan.fromJson(Map<String, dynamic> json) {
    return ModelSkdTahunan(
      id: json['id'],
      wilayah: json['wilayah'],
      ikk_n1: json['ikk_n1'],
      ipak_n1: json['ipak_n1'],
      ikk_n2: json['ikk_n2'],
      ipak_n2: json['ipak_n2'],
      ikk_n3: json['ikk_n3'],
      ipak_n3: json['ipak_n3'],
      ikk_n4: json['ikk_n4'],
      ipak_n4: json['ipak_n4'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
