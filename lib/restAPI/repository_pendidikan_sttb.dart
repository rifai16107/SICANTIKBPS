import 'dart:convert';
import 'package:bps_cilacap/restAPI/model_pendidikan_sttb.dart';
import 'package:http/http.dart' as http;

class RepositorySttb {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikan-sttb';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isisttb) => ModelSttb.fromJson(isisttb))
            .toList();
      }
    } catch (isisttb) {
      // ignore: avoid_print
      print(isisttb.toString());
    }
  }
}
