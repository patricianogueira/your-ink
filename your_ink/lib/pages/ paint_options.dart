import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class PaintOptions extends StatelessWidget {
  const PaintOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_sharp,
          color: CustomColors.write,
        ),
      ),
      body: ListView(
        children: [
          const TextFormat(
            string: Strings.paintOptions,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: CustomColors.black,
          ),
          Card(
            
            ),
          
        ],
      ),
    );
  }
}
