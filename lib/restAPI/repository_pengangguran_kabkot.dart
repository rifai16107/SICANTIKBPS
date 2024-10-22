import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pengangguran_kabkot.dart';
import 'package:http/http.dart' as http;

class RepositoryPengangguranKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pengangguran-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipenganggurankabkot) =>
                PengangguranKabkot.fromJson(isipenganggurankabkot))
            .toList();
      }
    } catch (isipenganggurankabkot) {
      // ignore: avoid_print
      print(isipenganggurankabkot.toString());
    }
  }
}
