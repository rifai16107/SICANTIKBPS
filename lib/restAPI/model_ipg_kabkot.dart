// ignore_for_file: camel_case_types, non_constant_identifier_names

class modelIpgKabkot {
  final int id;
  final String kab_kota;
  final String ipm_lk_n1;
  final String ipm_lk_n2;
  final String ipm_lk_n3;
  final String ipm_lk_n4;
  final String ipm_lk_n5;
  final String ipm_pr_n1;
  final String ipm_pr_n2;
  final String ipm_pr_n3;
  final String ipm_pr_n4;
  final String ipm_pr_n5;
  final String ipg_n1;
  final String ipg_n2;
  final String ipg_n3;
  final String ipg_n4;
  final String ipg_n5;
  final String tahun;
  final String created_at;
  final String updated_at;

  const modelIpgKabkot({
    required this.id,
    required this.kab_kota,
    required this.ipm_lk_n1,
    required this.ipm_lk_n2,
    required this.ipm_lk_n3,
    required this.ipm_lk_n4,
    required this.ipm_lk_n5,
    required this.ipm_pr_n1,
    required this.ipm_pr_n2,
    required this.ipm_pr_n3,
    required this.ipm_pr_n4,
    required this.ipm_pr_n5,
    required this.ipg_n1,
    required this.ipg_n2,
    required this.ipg_n3,
    required this.ipg_n4,
    required this.ipg_n5,
    required this.tahun,
    required this.created_at,
    required this.updated_at,
  });

  factory modelIpgKabkot.fromJson(Map<String, dynamic> json) {
    return modelIpgKabkot(
      id: json['id'],
      kab_kota: json['kab_kota'],
      ipm_lk_n1: json['ipm_lk_n1'],
      ipm_lk_n2: json['ipm_lk_n2'],
      ipm_lk_n3: json['ipm_lk_n3'],
      ipm_lk_n4: json['ipm_lk_n4'],
      ipm_lk_n5: json['ipm_lk_n5'],
      ipm_pr_n1: json['ipm_pr_n1'],
      ipm_pr_n2: json['ipm_pr_n2'],
      ipm_pr_n3: json['ipm_pr_n3'],
      ipm_pr_n4: json['ipm_pr_n4'],
      ipm_pr_n5: json['ipm_pr_n5'],
      ipg_n1: json['ipg_n1'],
      ipg_n2: json['ipg_n2'],
      ipg_n3: json['ipg_n3'],
      ipg_n4: json['ipg_n4'],
      ipg_n5: json['ipg_n5'],
      tahun: json['tahun'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
