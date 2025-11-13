import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_sarped.dart';
import 'package:http/http.dart' as http;

class RepositorySarped {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-sarped';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisarped) => ModelSarped.fromJson(isisarped))
            .toList();
      }
    } catch (isisarped) {
      // ignore: avoid_print
      print(isisarped.toString());
    }
  }
}
