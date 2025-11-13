// ignore_for_file: non_constant_identifier_names

class PengangguranKabkot {
  final int id;
  final String kab_kota;
  final String tpt_n1;
  final String tpt_n2;
  final String tpt_n3;
  final String tpt_n4;
  final String tpt_n5;
  final String tpak_n1;
  final String tpak_n2;
  final String tpak_n3;
  final String tpak_n4;
  final String tpak_n5;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PengangguranKabkot({
    required this.id,
    required this.kab_kota,
    required this.tpt_n1,
    required this.tpt_n2,
    required this.tpt_n3,
    required this.tpt_n4,
    required this.tpt_n5,
    required this.tpak_n1,
    required this.tpak_n2,
    required this.tpak_n3,
    required this.tpak_n4,
    required this.tpak_n5,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory PengangguranKabkot.fromJson(Map<String, dynamic> json) {
    return PengangguranKabkot(
      id: json['id'],
      kab_kota: json['kab_kota'],
      tpt_n1: json['tpt_n1'],
      tpt_n2: json['tpt_n2'],
      tpt_n3: json['tpt_n3'],
      tpt_n4: json['tpt_n4'],
      tpt_n5: json['tpt_n5'],
      tpak_n1: json['tpak_n1'],
      tpak_n2: json['tpak_n2'],
      tpak_n3: json['tpak_n3'],
      tpak_n4: json['tpak_n4'],
      tpak_n5: json['tpak_n5'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
