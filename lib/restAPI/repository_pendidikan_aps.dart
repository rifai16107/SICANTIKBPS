import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_aps.dart';
import 'package:http/http.dart' as http;

class RepositoryAps {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-aps';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiaps) => ModelAps.fromJson(isiaps))
            .toList();
      }
    } catch (isiaps) {
      // ignore: avoid_print
      print(isiaps.toString());
    }
  }
}
