import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_parsek.dart';
import 'package:http/http.dart' as http;

class RepositoryParsek {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-parsek';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiparsek) => ModelParsek.fromJson(isiparsek))
            .toList();
      }
    } catch (isiparsek) {
      // ignore: avoid_print
      print(isiparsek.toString());
    }
  }
}
