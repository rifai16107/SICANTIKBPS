// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIdg {
  final int id;
  final String tahun;
  final String pendapatan;
  final String profesional;
  final String parlemen;
  final String idg;
  final String created_at;
  final String updated_at;

  const modelIdg({
    required this.id,
    required this.tahun,
    required this.pendapatan,
    required this.profesional,
    required this.parlemen,
    required this.idg,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIdg.fromJson(Map<String, dynamic> json) {
    return modelIdg(
      id: json['id'],
      tahun: json['tahun'],
      pendapatan: json['pendapatan'],
      profesional: json['profesional'],
      parlemen: json['parlemen'],
      idg: json['idg'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
