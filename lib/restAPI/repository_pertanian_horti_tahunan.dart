import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pertanian_horti_tahunan.dart';
import 'package:http/http.dart' as http;

class RepositoryPertanianHortiTahunan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pertanian-horti-tahunan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipertanian) => PertanianHortiTahunan.fromJson(isipertanian))
            .toList();
      }
    } catch (isipertanian) {
      // ignore: avoid_print
      print(isipertanian.toString());
    }
  }
}
