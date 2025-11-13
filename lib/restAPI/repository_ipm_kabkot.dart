import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_ipm_kabkot.dart';

class RepositoryIpmKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ipm-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiipmkabkot) => modelIpmKabkot.fromJson(isiipmkabkot))
            .toList();
      }
    } catch (isiipmkabkot) {
      // ignore: avoid_print
      print(isiipmkabkot.toString());
    }
  }
}
