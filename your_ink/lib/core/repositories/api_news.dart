import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:your_ink/core/models/login_model.dart';
import 'package:your_ink/core/models/paint_model.dart';

class ApiNews {
  final route = 'paints';
  final routeLogin = 'login';
  final routeRate = 'rate';
  final routeQuestion = 'question';
  final _path = 'https://62546fae19bc53e2347e8008.mockapi.io';

  //recupera os dados dessa modelagem
  Future<List<PaintModel>> getNews() async {
    final _url = '$_path/$route';
    final response = await http.get(Uri.parse(_url));

    try {
      if (response.statusCode == 200) {
        final decodeJson = jsonDecode(response.body) as Map;
        print(decodeJson.values);
        //final benefitsList = decodeJson['data'] as List;

        return decodeJson.values
            .map<PaintModel>((benefit) => PaintModel.fromJson(benefit))
            .toList();
      }
      //print(response.body);
      return [];
    } catch (error) {
      throw Exception(error);
    }
  }

  //-------------------------------------------------------
  Future<List<LoginModel>> postLoginNews() async {
    final _url = '$_path/$routeLogin';
    //print(_url);

    try {
      final response = await http.post(
        Uri.parse(_url),
        body: {
          'email': 'eduardo@loomi.com.br',
          'password': 12345678.toString(),
        },
      );
      //print(response.body);
      return [];
    } catch (error) {
      throw Exception(error);
    }
  }

  //--------------------------------------------------------

  Future<List<LoginModel>> postRateNews() async {
    final _url = '$_path/$routeRate';
    //print(_url);

    try {
      final response = await http.post(
        Uri.parse(_url),
        body: {
          'rating': 1.toString(),
        },
      );
      //print(response.body);
      return [];
    } catch (error) {
      throw Exception(error);
    }
  }

  //--------------------------------------------------------

  Future<List<LoginModel>> postQuestionNews() async {
    final _url = '$_path/$routeQuestion';
    //print(_url);

    try {
      final response = await http.post(
        Uri.parse(_url),
        body: {
          'question': 'A tinta de secagem rápida é fácil de limpar?',
        },
      );
      //print(response.body);
      return [];
    } catch (error) {
      throw Exception(error);
    }
  }
}
