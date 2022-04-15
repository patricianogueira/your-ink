import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:your_ink/core/models/paint_model.dart';

class ApiNews {
  final route = 'paints';
  final _path = 'https://62546fae19bc53e2347e8008.mockapi.io';

  //recupera os dados dessa modelagem
  Future<List<PaintModel>> getNews() async {
    final _url = '$_path/$route';
    final response = await http.get(Uri.parse(_url));

    try {
      if (response.statusCode == 200) {
        final decodeJson = jsonDecode(response.body);

        final benefitsList = decodeJson['data'] as List;

        return benefitsList
            .map((benefit) => PaintModel.fromJson(benefit))
            .toList();
      }
      return [];
    } catch (error) {
      throw Exception(error);
    }
  }
}
