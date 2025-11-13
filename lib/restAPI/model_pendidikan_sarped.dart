// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelSarped {
  final int id;
  final String nama;
  final String sklh;
  final String guru;
  final String murid;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelSarped({
    required this.id,
    required this.nama,
    required this.sklh,
    required this.guru,
    required this.murid,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelSarped.fromJson(Map<String, dynamic> json) {
    return ModelSarped(
        id: json['id'],
        nama: json['nama'],
        sklh: json['sklh'],
        guru: json['guru'],
        murid: json['murid'], 
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
