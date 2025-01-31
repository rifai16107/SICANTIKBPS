import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_prasekolah.dart';
import 'package:http/http.dart' as http;

class RepositoryPrasekolah {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-prasekolah';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiprasekolah) => ModelPrasekolah.fromJson(isiprasekolah))
            .toList();
      }
    } catch (isiprasekolah) {
      // ignore: avoid_print
      print(isiprasekolah.toString());
    }
  }
}
