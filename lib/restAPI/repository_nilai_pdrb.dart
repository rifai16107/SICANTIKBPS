import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_nilai_pdrb.dart';
import 'package:http/http.dart' as http;

class RepositoryNilaiPdrb {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nilai-pdrb';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => NilaiPdrb.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
