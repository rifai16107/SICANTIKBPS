import 'dart:convert';
import 'model_pdrb_pengeldislain.dart';
import 'package:http/http.dart' as http;

class RepositoryPdrbPengelDislain {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-pengeldislain';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => PdrbPengelDislain.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}
