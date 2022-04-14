import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class HowPaint extends StatelessWidget {
  const HowPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.grey,
      appBar: AppBar(
        backgroundColor: CustomColors.grey,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: CustomColors.greyArrow,
          ),
          onTap: () {},
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: TextFormat(
              string: Strings.howPaint,
              fontSize: 32,
              color: CustomColors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Expanded(
                    child: TextFormat(
                      string: Strings.one,
                      fontSize: 31,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: TextFormat(
                        string: Strings.firstCoat,
                        fontSize: 22,
                        color: CustomColors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                  Expanded(child: Icon(Icons.format_paint)),
                ],
              ),
              const TextFormat(
                string: Strings.instructionFirstCoat,
                fontSize: 16,
                color: CustomColors.black,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextFormat(
                      string: Strings.two,
                      fontSize: 32,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextFormat(
                      string: Strings.howPaint,
                      fontSize: 22,
                      color: CustomColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Icon(Icons.format_paint)),
                ],
              ),
              const TextFormat(
                string: Strings.instructionHowPaint,
                fontSize: 16,
                color: CustomColors.black,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(
                height: 40,
              ),
              const Icon(
                Icons.arrow_downward_sharp,
                color: CustomColors.greyArrow,
                size: 100.0,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: const [
                  Expanded(
                    child: TextFormat(
                      string: Strings.tree,
                      fontSize: 32,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextFormat(
                      string: Strings.passTheInk,
                      fontSize: 22,
                      color: CustomColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Icon(Icons.format_paint)),
                ],
              ),
              const TextFormat(
                string: Strings.instructionpassTheInk,
                fontSize: 16,
                color: CustomColors.black,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
