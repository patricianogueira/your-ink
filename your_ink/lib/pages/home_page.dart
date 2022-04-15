import 'package:flutter/material.dart';
import 'package:your_ink/pages/%20how%20_paint.dart';
import 'package:your_ink/pages/%20paint_options.dart';
import 'package:your_ink/pages/login_page.dart';
import 'package:your_ink/pages/rate_the_experience.dart';
import 'package:your_ink/pages/take_questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        children: const [
          Login(),
          PaintOptions(),
          HowPaint(),
          RateTheExperience(),
          TakeQuestions(),
        ],
      ),
    );
  }
}
