// ignore_for_file: non_constant_identifier_names

class NilaiPdrb {
  final int id;
  final String tahun;
  final String nilai_adhb_migas;
  final String nilai_adhb_tanpa_migas;
  final String nilai_adhk_migas;
  final String nilai_adhk_tanpa_migas;

  const NilaiPdrb({
    required this.id,
    required this.tahun,
    required this.nilai_adhb_migas,
    required this.nilai_adhb_tanpa_migas,
    required this.nilai_adhk_migas,
    required this.nilai_adhk_tanpa_migas,
  });

  factory NilaiPdrb.fromJson(Map<String, dynamic> json) {
    return NilaiPdrb(
      id: json['id'],
      tahun: json['tahun'],
      nilai_adhb_migas: json['nilai_adhb_migas'],
      nilai_adhb_tanpa_migas: json['nilai_adhb_tanpa_migas'],
      nilai_adhk_migas: json['nilai_adhk_migas'],
      nilai_adhk_tanpa_migas: json['nilai_adhk_tanpa_migas'],
    );
  }
}
