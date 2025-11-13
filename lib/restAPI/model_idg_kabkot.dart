// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIdgKabkot {
  final int id;
  final String kab_kota;
  final String pendapatan_n1;
  final String pendapatan_n2;
  final String pendapatan_n3;
  final String pendapatan_n4;
  final String pendapatan_n5;
  final String profesional_n1;
  final String profesional_n2;
  final String profesional_n3;
  final String profesional_n4;
  final String profesional_n5;
  final String parlemen_n1;
  final String parlemen_n2;
  final String parlemen_n3;
  final String parlemen_n4;
  final String parlemen_n5;
  final String idg_n1;
  final String idg_n2;
  final String idg_n3;
  final String idg_n4;
  final String idg_n5;
  final String tahun;
  final String created_at;
  final String updated_at;

  const modelIdgKabkot({
    required this.id,
    required this.kab_kota,
    required this.pendapatan_n1,
    required this.pendapatan_n2,
    required this.pendapatan_n3,
    required this.pendapatan_n4,
    required this.pendapatan_n5,
    required this.profesional_n1,
    required this.profesional_n2,
    required this.profesional_n3,
    required this.profesional_n4,
    required this.profesional_n5,
    required this.parlemen_n1,
    required this.parlemen_n2,
    required this.parlemen_n3,
    required this.parlemen_n4,
    required this.parlemen_n5,
    required this.idg_n1,
    required this.idg_n2,
    required this.idg_n3,
    required this.idg_n4,
    required this.idg_n5,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIdgKabkot.fromJson(Map<String, dynamic> json) {
    return modelIdgKabkot(
      id: json['id'],
      kab_kota: json['kab_kota'],
      pendapatan_n1: json['pendapatan_n1'],
      pendapatan_n2: json['pendapatan_n2'],
      pendapatan_n3: json['pendapatan_n3'],
      pendapatan_n4: json['pendapatan_n4'],
      pendapatan_n5: json['pendapatan_n5'],
      profesional_n1: json['profesional_n1'],
      profesional_n2: json['profesional_n2'],
      profesional_n3: json['profesional_n3'],
      profesional_n4: json['profesional_n4'],
      profesional_n5: json['profesional_n5'],
      parlemen_n1: json['parlemen_n1'],
      parlemen_n2: json['parlemen_n2'],
      parlemen_n3: json['parlemen_n3'],
      parlemen_n4: json['parlemen_n4'],
      parlemen_n5: json['parlemen_n5'],
      idg_n1: json['idg_n1'],
      idg_n2: json['idg_n2'],
      idg_n3: json['idg_n3'],
      idg_n4: json['idg_n4'],
      idg_n5: json['idg_n5'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
