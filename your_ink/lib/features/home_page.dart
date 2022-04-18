import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_ink/core/models/paint_model.dart';
import 'package:your_ink/core/repositories/api_news.dart';
import 'package:your_ink/features/%20how%20_paint/pages/%20how%20_paint.dart';
import 'package:your_ink/features/login_page/pages/login_page.dart';
import 'package:your_ink/features/paint_options/bloc/paint_options_bloc.dart';
import 'package:your_ink/features/paint_options/pages/%20paint_options.dart';
import 'package:your_ink/features/rate_the_experience/pages/rate_the_experience.dart';
import 'package:your_ink/features/take_questions/pages/take_questions.dart';

class HomePage extends StatefulWidget {
 
  const HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: controller,
        children: [
          const Login(),
          BlocProvider(
            create: ((context) => PaintOptionsBloc(ApiNews())),
            child:const PaintOptions(paintList: [],),
          ),
          const HowPaint(),
          const RateTheExperience(),
          const TakeQuestions(),
        ],
      ),
    );
  }
}
