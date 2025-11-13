// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIpm {
  final int id;
  final String uhh;
  final String rls;
  final String hls;
  final String ppp;
  final String ipm;
  final String uhh_lfsp2020;
  final String ipm_lfsp2020;
  final String ipg;
  final String tahun;
  final String created_at;
  final String updated_at;

  const modelIpm({
    required this.id,
    required this.uhh,
    required this.rls,
    required this.hls,
    required this.ppp,
    required this.ipm,
    required this.uhh_lfsp2020,
    required this.ipm_lfsp2020,
    required this.ipg,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIpm.fromJson(Map<String, dynamic> json) {
    return modelIpm(
      id: json['id'],
      uhh: json['uhh'],
      rls: json['rls'],
      hls: json['hls'],
      ppp: json['ppp'],
      ipm: json['ipm'],
      uhh_lfsp2020: json['uhh_lfsp2020'],
      ipm_lfsp2020: json['ipm_lfsp2020'],
      ipg: json['ipg'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
