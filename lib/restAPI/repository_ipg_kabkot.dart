import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_ipg_kabkot.dart';

class RepositoryIpgKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/ipg-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isiipgkabkot) => modelIpgKabkot.fromJson(isiipgkabkot))
            .toList();
      }
    } catch (isiipgkabkot) {
      // ignore: avoid_print
      print(isiipgkabkot.toString());
    }
  }
}
