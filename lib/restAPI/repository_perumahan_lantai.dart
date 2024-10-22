import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_perumahan_lantai.dart';
import 'package:http/http.dart' as http;

class RepositoryLantai {
  final _baseURL = 'https://bps-3301-asap.my.id/api/perumahan-lantai';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isilantai) => ModelLantai.fromJson(isilantai))
            .toList();
      }
    } catch (isilantai) {
      // ignore: avoid_print
      print(isilantai.toString());
    }
  }
}
