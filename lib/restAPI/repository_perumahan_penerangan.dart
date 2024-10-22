import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_perumahan_penerangan.dart';
import 'package:http/http.dart' as http;

class RepositoryPenerangan {
  final _baseURL = 'https://bps-3301-asap.my.id/api/perumahan-penerangan';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipenerangan) => ModelPenerangan.fromJson(isipenerangan))
            .toList();
      }
    } catch (isipenerangan) {
      // ignore: avoid_print
      print(isipenerangan.toString());
    }
  }
}
