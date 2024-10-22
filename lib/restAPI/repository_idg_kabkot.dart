import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_idg_kabkot.dart';

class RepositoryIdgKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/idg-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiidgkabkot) => modelIdgKabkot.fromJson(isiidgkabkot))
            .toList();
      }
    } catch (isiidgkabkot) {
      // ignore: avoid_print
      print(isiidgkabkot.toString());
    }
  }
}
