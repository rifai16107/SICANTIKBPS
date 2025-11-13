// ignore_for_file: non_constant_identifier_names

class PertanianPangan {
  final int id;
  final String jenis_tanaman;
  final String luas;
  final String produktivitas;
  final String produksi;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PertanianPangan({
    required this.id,
    required this.jenis_tanaman,
    required this.luas,
    required this.produktivitas,
    required this.produksi,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory PertanianPangan.fromJson(Map<String, dynamic> json) {
    return PertanianPangan(
      id: json['id'],
      jenis_tanaman: json['jenis_tanaman'],
      luas: json['luas'],
      produktivitas: json['produktivitas'],
      produksi: json['produksi'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
