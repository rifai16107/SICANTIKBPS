import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_perumahan_atap.dart';
import 'package:http/http.dart' as http;

class RepositoryAtap {
  final _baseURL = 'https://bps-3301-asap.my.id/api/perumahan-atap';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiatap) => ModelAtap.fromJson(isiatap))
            .toList();
      }
    } catch (isiatap) {
      // ignore: avoid_print
      print(isiatap.toString());
    }
  }
}
