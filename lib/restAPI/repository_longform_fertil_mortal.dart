import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model_longform_fertil_mortal.dart';

class RepositoryLongformFertilMortal {
  final _baseURL = 'https://bps-3301-asap.my.id/api/longform-fertil-mortal';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isilongform) =>
                ModelLongformFertilmortal.fromJson(isilongform))
            .toList();
      }
    } catch (isilongform) {
      // ignore: avoid_print
      print(isilongform.toString());
    }
  }
}
