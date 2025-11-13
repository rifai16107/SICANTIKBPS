// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIpmKabkot {
  final int id;
  final String kab_kota;
  final String uhh;
  final String rls;
  final String hls;
  final String ppp;
  final String ipm_lfsp2020;
  final String uhh_n1;
  final String rls_n1;
  final String hls_n1;
  final String ppp_n1;
  final String ipm_lfsp2020_n1;
  final String uhh_n2;
  final String rls_n2;
  final String hls_n2;
  final String ppp_n2;
  final String ipm_lfsp2020_n2;
  final String uhh_n3;
  final String rls_n3;
  final String hls_n3;
  final String ppp_n3;
  final String ipm_lfsp2020_n3;
  final String uhh_n4;
  final String rls_n4;
  final String hls_n4;
  final String ppp_n4;
  final String ipm_lfsp2020_n4;
  final String tahun;
  final String tahun_new;
  final String created_at;
  final String updated_at;

  const modelIpmKabkot({
    required this.id,
    required this.kab_kota,
    required this.uhh,
    required this.rls,
    required this.hls,
    required this.ppp,
    required this.ipm_lfsp2020,
    required this.uhh_n1,
    required this.rls_n1,
    required this.hls_n1,
    required this.ppp_n1,
    required this.ipm_lfsp2020_n1,
    required this.uhh_n2,
    required this.rls_n2,
    required this.hls_n2,
    required this.ppp_n2,
    required this.ipm_lfsp2020_n2,
    required this.uhh_n3,
    required this.rls_n3,
    required this.hls_n3,
    required this.ppp_n3,
    required this.ipm_lfsp2020_n3,
    required this.uhh_n4,
    required this.rls_n4,
    required this.hls_n4,
    required this.ppp_n4,
    required this.ipm_lfsp2020_n4,
    required this.tahun,
    required this.tahun_new,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIpmKabkot.fromJson(Map<String, dynamic> json) {
    return modelIpmKabkot(
      id: json['id'],
      kab_kota: json['kab_kota'],
      uhh: json['uhh'],
      rls: json['rls'],
      hls: json['hls'],
      ppp: json['ppp'],
      ipm_lfsp2020: json['ipm_lfsp2020'],
      uhh_n1: json['uhh_n1'],
      rls_n1: json['rls_n1'],
      hls_n1: json['hls_n1'],
      ppp_n1: json['ppp_n1'],
      ipm_lfsp2020_n1: json['ipm_lfsp2020_n1'],
      uhh_n2: json['uhh_n2'],
      rls_n2: json['rls_n2'],
      hls_n2: json['hls_n2'],
      ppp_n2: json['ppp_n2'],
      ipm_lfsp2020_n2: json['ipm_lfsp2020_n2'],
      uhh_n3: json['uhh_n3'],
      rls_n3: json['rls_n3'],
      hls_n3: json['hls_n3'],
      ppp_n3: json['ppp_n3'],
      ipm_lfsp2020_n3: json['ipm_lfsp2020_n3'],
      uhh_n4: json['uhh_n4'],
      rls_n4: json['rls_n4'],
      hls_n4: json['hls_n4'],
      ppp_n4: json['ppp_n4'],
      ipm_lfsp2020_n4: json['ipm_lfsp2020_n4'],
      tahun: json['tahun'],
      tahun_new: json['tahun_new'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
