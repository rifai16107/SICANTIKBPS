// ignore_for_file: non_constant_identifier_names

class PertanianTernak {
  final int id;
  final String jenis_ternak;
  final String produksi_satuan;
  final String prod_thn1;
  final String prod_thn2;
  final String prod_thn3;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PertanianTernak({
    required this.id,
    required this.jenis_ternak,
    required this.produksi_satuan,
    required this.prod_thn1,
    required this.prod_thn2,
    required this.prod_thn3,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory PertanianTernak.fromJson(Map<String, dynamic> json) {
    return PertanianTernak(
      id: json['id'],
      jenis_ternak: json['jenis_ternak'],
      produksi_satuan: json['produksi_satuan'],
      prod_thn1: json['prod_thn1'],
      prod_thn2: json['prod_thn2'],
      prod_thn3: json['prod_thn3'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
