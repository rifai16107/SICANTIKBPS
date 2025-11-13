

class ModelLongformFertilmortal {
  final int id;
  final String wilayah;
  final String tfr;
  final String cbr;
  final String asfr1519;
  final String asfr2024;
  final String asfr2529;
  final String asfr3034;
  final String asfr3539;
  final String asfr4044;
  final String asfr4549;
  final String imr;
  final String cmr;
  final String u5mr;
  //final String created_at;
  //final String updated_at;
  final String tahun;

  const ModelLongformFertilmortal({
    required this.id,
    required this.wilayah,
    required this.tfr,
    required this.cbr,
    required this.asfr1519,
    required this.asfr2024,
    required this.asfr2529,
    required this.asfr3034,
    required this.asfr3539,
    required this.asfr4044,
    required this.asfr4549,
    required this.imr,
    required this.cmr,
    required this.u5mr,
    //required this.created_at,
    //required this.updated_at,
    required this.tahun,
  });

  factory ModelLongformFertilmortal.fromJson(Map<String, dynamic> json) {
    return ModelLongformFertilmortal(
      id: json['id'],
      wilayah: json['wilayah'],
      tfr: json['tfr'],
      cbr: json['cbr'],
      asfr1519: json['asfr1519'],
      asfr2024: json['asfr2024'],
      asfr2529: json['asfr2529'],
      asfr3034: json['asfr3034'],
      asfr3539: json['asfr3539'],
      asfr4044: json['asfr4044'],
      asfr4549: json['asfr4549'],
      imr: json['imr'],
      cmr: json['cmr'],
      u5mr: json['u5mr'],
      //created_at: json['created_at'],
      //updated_at: json['updated_at'],
      tahun: json['tahun'],
    );
  }
}
