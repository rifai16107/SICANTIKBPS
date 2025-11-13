// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelLongform {
  final int id;
  final String indikator;
  final String clp;
  final String clp_sp2010;
  final String jateng;
  final String jateng_sp2010;
  final String tahun;
  final String created_at;
  final String updated_at;

  const modelLongform({
    required this.id,
    required this.indikator,
    required this.clp,
    required this.clp_sp2010,
    required this.jateng,
    required this.jateng_sp2010,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory modelLongform.fromJson(Map<String, dynamic> json) {
    return modelLongform(
      id: json['id'],
      indikator: json['indikator'],
      clp: json['clp'],
      clp_sp2010: json['clp_sp2010'],
      jateng: json['jateng'],
      jateng_sp2010: json['jateng_sp2010'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
