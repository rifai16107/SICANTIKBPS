import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_skd_tahunan.dart';
import 'package:http/http.dart' as http;

class RepositorySkdTahunan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/skd-hasil-tahunan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiskdtahunan) => ModelSkdTahunan.fromJson(isiskdtahunan))
            .toList();
      }
    } catch (isiskdtahunan) {
      // ignore: avoid_print
      print(isiskdtahunan.toString());
    }
  }
}
