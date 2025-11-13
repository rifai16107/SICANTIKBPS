// ignore_for_file: non_constant_identifier_names

class ModelBknAngkatanKerja {
  final int id;
  final String angkatan_kerja;
  final String bekerja;
  final String pengangguran;
  final String bkn_angkatan_kerja;
  final String sekolah;
  final String urus_ruta;
  final String lainnya;
  final String jumlah;
  final String gender;
  final String tahun;
  final String created_at;
  final String updated_at;

  const ModelBknAngkatanKerja({
    required this.id,
    required this.angkatan_kerja,
    required this.bekerja,
    required this.pengangguran,
    required this.bkn_angkatan_kerja,
    required this.sekolah,
    required this.urus_ruta,
    required this.lainnya,
    required this.jumlah,
    required this.gender,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory ModelBknAngkatanKerja.fromJson(Map<String, dynamic> json) {
    return ModelBknAngkatanKerja(
        id: json['id'],
        gender: json['gender'],
        tahun: json['tahun'],
        angkatan_kerja: json['angkatan_kerja'],
        bekerja: json['bekerja'],
        pengangguran: json['pengangguran'],
        bkn_angkatan_kerja: json['bkn_angkatan_kerja'],
        sekolah: json['sekolah'],
        urus_ruta: json['urus_ruta'],
        lainnya: json['lainnya'],
        jumlah: json['jumlah'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
