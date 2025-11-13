// ignore_for_file: non_constant_identifier_names

class Pengangguran {
  final int id;
  final String tpak;
  final String tpt;
  final String created_at;
  final String updated_at;
  const Pengangguran(
      {required this.id,
      required this.tpak,
      required this.tpt,
      required this.created_at,
      required this.updated_at});

  factory Pengangguran.fromJson(Map<String, dynamic> json) {
    return Pengangguran(
        id: json['id'],
        tpak: json['tpak'],
        tpt: json['tpt'],
        created_at: json['created_at'],
        updated_at: json['updated_at']);
  }
}
