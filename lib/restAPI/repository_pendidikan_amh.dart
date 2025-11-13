import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_amh.dart';
import 'package:http/http.dart' as http;

class RepositoryAmh {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-amh';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiamh) => ModelAmh.fromJson(isiamh))
            .toList();
      }
    } catch (isiamh) {
      // ignore: avoid_print
      print(isiamh.toString());
    }
  }
}
