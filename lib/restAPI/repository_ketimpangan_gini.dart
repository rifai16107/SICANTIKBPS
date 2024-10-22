import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_ketimpangan_gini.dart';
import 'package:http/http.dart' as http;

class RepositoryKetimpanganGini {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ketimpangan-gini';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiketimpangangini) => ModelKetimpanganGini.fromJson(isiketimpangangini))
            .toList();
      }
    } catch (isiketimpangangini) {
      // ignore: avoid_print
      print(isiketimpangangini.toString());
    }
  }
}
