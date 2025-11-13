// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelLongformMobilitas {
  final int id;
  final String wilayah;
  final String risen_postgenz;
  final String risen_genz;
  final String risen_milenial;
  final String risen_genx;
  final String risen_boomer;
  final String lifetime_postgenz;
  final String lifetime_genz;
  final String lifetime_milenial;
  final String lifetime_genx;
  final String lifetime_boomer;
  final String created_at;
  final String updated_at;
  final String tahun;

  const ModelLongformMobilitas({
    required this.id,
    required this.wilayah,
    required this.risen_postgenz,
    required this.risen_genz,
    required this.risen_milenial,
    required this.risen_genx,
    required this.risen_boomer,
    required this.lifetime_postgenz,
    required this.lifetime_genz,
    required this.lifetime_milenial,
    required this.lifetime_genx,
    required this.lifetime_boomer,
    required this.created_at,
    required this.updated_at,
    required this.tahun,
  });

  factory ModelLongformMobilitas.fromJson(Map<String, dynamic> json) {
    return ModelLongformMobilitas(
      id: json['id'],
      wilayah: json['wilayah'],
      risen_postgenz: json['risen_postgenz'],
      risen_genz: json['risen_genz'],
      risen_milenial: json['risen_milenial'],
      risen_genx: json['risen_genx'],
      risen_boomer: json['risen_boomer'],
      lifetime_postgenz: json['lifetime_postgenz'],
      lifetime_genz: json['lifetime_genz'],
      lifetime_milenial: json['lifetime_milenial'],
      lifetime_genx: json['lifetime_genx'],
      lifetime_boomer: json['lifetime_boomer'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      tahun: json['tahun'],
    );
  }
}
