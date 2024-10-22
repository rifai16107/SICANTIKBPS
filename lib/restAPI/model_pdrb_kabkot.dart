// ignore_for_file: non_constant_identifier_names

class PdrbKabkot {
  final int id;
  final String wilayah;
  final String pdrb_adhb1;
  final String pdrb_adhb2;
  final String pdrb_adhb3;
  final String pdrb_adhb4;
  final String pdrb_adhb5;
  final String pdrb_adhk1;
  final String pdrb_adhk2;
  final String pdrb_adhk3;
  final String pdrb_adhk4;
  final String pdrb_adhk5;
  final String pe1;
  final String pe2;
  final String pe3;
  final String pe4;
  final String pe5;
  final String tahun;
  final String created_at;
  final String updated_at;

  const PdrbKabkot(
      {required this.id,
      required this.wilayah,
      required this.pdrb_adhb1,
      required this.pdrb_adhb2,
      required this.pdrb_adhb3,
      required this.pdrb_adhb4,
      required this.pdrb_adhb5,
      required this.pdrb_adhk1,
      required this.pdrb_adhk2,
      required this.pdrb_adhk3,
      required this.pdrb_adhk4,
      required this.pdrb_adhk5,
      required this.pe1,
      required this.pe2,
      required this.pe3,
      required this.pe4,
      required this.pe5,
      required this.tahun,
      required this.created_at,
      required this.updated_at});

  factory PdrbKabkot.fromJson(Map<String, dynamic> json) {
    return PdrbKabkot(
        id: json['id'],
        wilayah: json['wilayah'],
        pdrb_adhb1: json['pdrb_adhb1'],
        pdrb_adhb2: json['pdrb_adhb2'],
        pdrb_adhb3: json['pdrb_adhb3'],
        pdrb_adhb4: json['pdrb_adhb4'],
        pdrb_adhb5: json['pdrb_adhb5'],
        pdrb_adhk1: json['pdrb_adhk1'],
        pdrb_adhk2: json['pdrb_adhk2'],
        pdrb_adhk3: json['pdrb_adhk3'],
        pdrb_adhk4: json['pdrb_adhk4'],
        pdrb_adhk5: json['pdrb_adhk5'],
        pe1: json['pe1'],
        pe2: json['pe2'],
        pe3: json['pe3'],
        pe4: json['pe4'],
        pe5: json['pe5'],
        tahun: json['tahun'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
