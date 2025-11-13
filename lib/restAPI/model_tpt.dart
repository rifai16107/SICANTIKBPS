// ignore_for_file: non_constant_identifier_names

class Tpt {
  final int id;
  final String lk;
  final String pr;
  final String lk_pr;
  final String created_at;
  final String updated_at;

  const Tpt({
    required this.id,
    required this.lk,
    required this.pr,
    required this.lk_pr,
    required this.created_at,
    required this.updated_at,
  });

  factory Tpt.fromJson(Map<String, dynamic> json) {
    return Tpt(
      id: json['id'],
      lk: json['lk'],
      pr: json['pr'],
      lk_pr: json['lk_pr'],
      created_at: json['created_at'],
      updated_at: json['updated_at'],
    );
  }
}
