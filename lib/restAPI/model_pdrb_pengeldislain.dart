// ignore_for_file: non_constant_identifier_names

class PdrbPengelDislain {
  final int id;
  final String kategori;
  final String kons_ruta;
  final String kons_lnprt;
  final String kons_pem;
  final String pmtb;
  final String inventori;
  final String ekspor;
  final String total;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PdrbPengelDislain(
      {required this.id,
      required this.kategori,
      required this.kons_ruta,
      required this.kons_lnprt,
      required this.kons_pem,
      required this.pmtb,
      required this.inventori,
      required this.ekspor,
      required this.total,
      required this.tahun,
      required this.created_at,
      required this.updated_at});

  factory PdrbPengelDislain.fromJson(Map<String, dynamic> json) {
    return PdrbPengelDislain(
        id: json['id'],
        kategori: json['kategori'],
        kons_ruta: json['kons_ruta'],
        kons_lnprt: json['kons_lnprt'],
        kons_pem: json['kons_pem'],
        pmtb: json['pmtb'],
        inventori: json['inventori'],
        ekspor: json['ekspor'],
        tahun: json['tahun'],
        total: json['total'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
