// ignore_for_file: non_constant_identifier_names

class JumlahPendudukKabkot {
  final int id;
  final String wilayah;
  final String lk1;
  final String pr1;
  final String lk2;
  final String pr2;
  final String lk3;
  final String pr3;
  final String lk4;
  final String pr4;
  final String lk5;
  final String pr5;
  final String tahun;
  final String created_at;
  final String updated_at;
  

  const JumlahPendudukKabkot({
    required this.id,
    required this.wilayah,
    required this.lk1,
    required this.pr1,
    required this.lk2,
    required this.pr2,
    required this.lk3,
    required this.pr3,
    required this.lk4,
    required this.pr4,
    required this.lk5,
    required this.pr5,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
    
  });

  factory JumlahPendudukKabkot.fromJson(Map<String, dynamic> json) {
    return JumlahPendudukKabkot(
      id: json['id'],
      wilayah: json['wilayah'],
      lk1: json['lk1'],
      pr1: json['pr1'],
      lk2: json['lk2'],
      pr2: json['pr2'],
      lk3: json['lk3'],
      pr3: json['pr3'],
      lk4: json['lk4'],
      pr4: json['pr4'],
      lk5: json['lk5'],
      pr5: json['pr5'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
      
    );
  }
}
