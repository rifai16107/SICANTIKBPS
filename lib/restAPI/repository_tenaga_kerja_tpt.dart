// ignore_for_file: empty_catches

import 'dart:convert';
import 'model_tenaga_kerja_tpt.dart';
import 'package:http/http.dart' as http;

class RepositoryPengangguran {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pengangguran';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipengangguran) => Pengangguran.fromJson(isipengangguran))
            .toList();
      }
    } catch (isipengagguran) {}
  }
}
