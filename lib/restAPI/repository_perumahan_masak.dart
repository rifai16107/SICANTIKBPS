import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_perumahan_masak.dart';
import 'package:http/http.dart' as http;

class RepositoryMasak {
  final _baseURL = 'https://bps-3301-asap.my.id/api/perumahan-masak';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isimasak) => ModelMasak.fromJson(isimasak))
            .toList();
      }
    } catch (isimasak) {
      // ignore: avoid_print
      print(isimasak.toString());
    }
  }
}
