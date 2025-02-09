// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelInflasiYony {
  final int id;
  final String kategori;
  final String sembako;
  final String sandang;
  final String perumahan;
  final String perlengkapan;
  final String kesehatan;
  final String transportasi;
  final String informasi;
  final String rekreasi;
  final String pendidikan;
  final String penyedia_pangan;
  final String perawatan_pribadi;
  final String total;
  final String bulan;
  final String tahun;
  final String created_at;
  final String updated_at;
  

  const modelInflasiYony({
    required this.id,
    required this.kategori,
    required this.sembako,
    required this.sandang,
    required this.perumahan,
    required this.perlengkapan,
    required this.kesehatan,
    required this.transportasi,
    required this.informasi,
    required this.rekreasi,
    required this.pendidikan,
    required this.penyedia_pangan,
    required this.perawatan_pribadi,
    required this.total,
    required this.bulan,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
    
  });

  factory modelInflasiYony.fromJson(Map<String, dynamic> json) {
    return modelInflasiYony(
        id: json['id'],
        kategori: json['kategori'],
        sembako: json['sembako'],
        sandang: json['sandang'],
        perumahan: json['perumahan'],
        perlengkapan: json['perlengkapan'],
        kesehatan: json['kesehatan'],
        transportasi: json['transportasi'],
        informasi: json['informasi'],
        rekreasi: json['rekreasi'],
        pendidikan: json['pendidikan'],
        penyedia_pangan: json['penyedia_pangan'],
        perawatan_pribadi: json['perawatan_pribadi'],
        total: json['total'],
        bulan: json['bulan'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
