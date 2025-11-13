// ignore_for_file: non_constant_identifier_names

class SensusTaniMilenial {
  final int id;
  final String wilayah;
  final String petani;
  final String petani_pg_lahan;
  final String petani_gurem;
  final String petani_milenial_1939;
  final String urban_rtup;
  final String urban_utp;
  final String jumlah_utp;
  final String jumlah_upb;
  final String jumlah_utl;
  final String tahun;

  const SensusTaniMilenial({
    required this.id,
    required this.wilayah,
    required this.petani,
    required this.petani_pg_lahan,
    required this.petani_gurem,
    required this.petani_milenial_1939,
    required this.urban_rtup,
    required this.urban_utp,
    required this.jumlah_utp,
    required this.jumlah_upb,
    required this.jumlah_utl,
    required this.tahun,
  });

  factory SensusTaniMilenial.fromJson(Map<String, dynamic> json) {
    return SensusTaniMilenial(
        id: json['id'],
        wilayah: json['wilayah'],
        petani: json['petani'],
        petani_pg_lahan: json['petani_pg_lahan'],
        petani_gurem: json['petani_gurem'],
        petani_milenial_1939: json['petani_milenial_1939'],
        urban_rtup: json['urban_rtup'],
        urban_utp: json['urban_utp'],
        jumlah_utp: json['jumlah_utp'],
        jumlah_upb: json['jumlah_upb'],
        jumlah_utl: json['jumlah_utl'],
        tahun: json['tahun']);
  }
}
