import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_sensustani_dominan_spk.dart';
import 'package:http/http.dart' as http;

class RepositorySensusTaniDominanSpk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/sensus-tani-dominan-spk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisensustani) => SensusTaniDominanSpk.fromJson(isisensustani))
            .toList();
      }
    } catch (isisensustani) {
      // ignore: avoid_print
      print(isisensustani.toString());
    }
  }
}
