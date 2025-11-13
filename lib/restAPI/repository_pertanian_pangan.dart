import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pertanian_pangan.dart';
import 'package:http/http.dart' as http;

class RepositoryPertanianPangan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pertanian-pangan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipertanian) => PertanianPangan.fromJson(isipertanian))
            .toList();
      }
    } catch (isipertanian) {
      // ignore: avoid_print
      print(isipertanian.toString());
    }
  }
}
