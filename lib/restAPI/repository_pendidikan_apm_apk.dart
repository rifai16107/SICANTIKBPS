import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_apm_apk.dart';
import 'package:http/http.dart' as http;

class RepositoryApmApk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-apm-apk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiapmapk) => ModelApmApk.fromJson(isiapmapk))
            .toList();
      }
    } catch (isiapmapk) {
      // ignore: avoid_print
      print(isiapmapk.toString());
    }
  }
}
