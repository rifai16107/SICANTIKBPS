// ignore_for_file: non_constant_identifier_names

class PertanianHortiSemusim {
  final int id;
  final String jenis_tanaman;
  final String luas_satuan;
  final String luas_thn1;
  final String luas_thn2;
  final String luas_thn3;
  final String produksi_satuan;
  final String prod_thn1;
  final String prod_thn2;
  final String prod_thn3;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PertanianHortiSemusim({
    required this.id,
    required this.jenis_tanaman,
    required this.luas_satuan,
    required this.luas_thn1,
    required this.luas_thn2,
    required this.luas_thn3,
    required this.produksi_satuan,
    required this.prod_thn1,
    required this.prod_thn2,
    required this.prod_thn3,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory PertanianHortiSemusim.fromJson(Map<String, dynamic> json) {
    return PertanianHortiSemusim(
      id: json['id'],
      jenis_tanaman: json['jenis_tanaman'],
      luas_satuan: json['luas_satuan'],
      luas_thn1: json['luas_thn1'],
      luas_thn2: json['luas_thn2'],
      luas_thn3: json['luas_thn3'],
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
