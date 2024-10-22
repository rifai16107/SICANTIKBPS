import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_series_inflasi.dart';
import 'package:http/http.dart' as http;

class RepositorySeriesInflasi {
  final _baseURL = 'https://bps-3301-asap.my.id/api/series-inflasi';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiseriesinflasi) =>
                modelSeriesInflasi.fromJson(isiseriesinflasi))
            .toList();
      }
    } catch (isiseriesinflasi) {
      // ignore: avoid_print
      print(isiseriesinflasi.toString());
    }
  }
}
