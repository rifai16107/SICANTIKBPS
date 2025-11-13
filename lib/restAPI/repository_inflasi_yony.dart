import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_inflasi_yony.dart';
import 'package:http/http.dart' as http;

class RepositoryInflasiYony {
  final _baseURL = 'https://bps-3301-asap.my.id/api/inflasi-tahunketahun';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiinflasi) => modelInflasiYony.fromJson(isiinflasi))
            .toList();
      }
    } catch (isiinflasi) {
      // ignore: avoid_print
      print(isiinflasi.toString());
    }
  }
}
