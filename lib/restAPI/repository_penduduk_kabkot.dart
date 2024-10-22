import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_penduduk_kabkot.dart';
import 'package:http/http.dart' as http;

class RepositoryJumlahPendudukKabkot {
  final _baseURL = 'https://bps-3301-asap.my.id/api/penduduk-kabkot';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendudukkabkot) =>
                JumlahPendudukKabkot.fromJson(isipendudukkabkot))
            .toList();
      }
    } catch (isipendudukkabkot) {
      // ignore: avoid_print
      print(isipendudukkabkot.toString());
    }
  }
}
