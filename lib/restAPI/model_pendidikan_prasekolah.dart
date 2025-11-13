// ignore_for_file: camel_case_types, non_constant_identifier_names

class ModelPrasekolah {
  final int id;
  final String msh_pra;
  final String tdk_pra;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelPrasekolah({
    required this.id,
    required this.msh_pra,
    required this.tdk_pra,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelPrasekolah.fromJson(Map<String, dynamic> json) {
    return ModelPrasekolah(
        id: json['id'],
        msh_pra: json['msh_pra'],
        tdk_pra: json['tdk_pra'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
