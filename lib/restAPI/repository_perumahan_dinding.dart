import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_perumahan_dinding.dart';
import 'package:http/http.dart' as http;

class RepositoryDinding {
  final _baseURL = 'https://bps-3301-asap.my.id/api/perumahan-dinding';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isidinding) => ModelDinding.fromJson(isidinding))
            .toList();
      }
    } catch (isidinding) {
      // ignore: avoid_print
      print(isidinding.toString());
    }
  }
}
