import 'package:flutter/material.dart';
import 'package:your_ink/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    final PageController controller = PageController();
    return Scaffold(
      body:  PageView(
        controller: controller, children: const [
          Login(),
        ],
      ),
    );
  }
}