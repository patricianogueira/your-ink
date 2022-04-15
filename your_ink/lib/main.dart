import 'package:flutter/material.dart';
import 'package:your_ink/core/repositories/api_news.dart';
import 'package:your_ink/pages/home_page.dart';


void main() {
  runApp(MyApp());

  final api = ApiNews();

  api.getNews();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

  
}
