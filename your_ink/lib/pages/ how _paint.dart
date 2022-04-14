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
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: CustomColors.greyArrow,
          ),
          onTap: () {},
        ),
        backgroundColor: CustomColors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 35),
              child: Text(
                Strings.howPaint,
                style: TextStyle(
                  fontSize: 32,
                  color: CustomColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    Strings.one,
                    style: TextStyle(
                      fontSize: 31,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    Strings.firstCoat,
                    style: TextStyle(
                      fontSize: 22,
                      color: CustomColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Icon(Icons.format_paint)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 70),
              child: Text(
                Strings.instructionHowPaint,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    Strings.two,
                    style: TextStyle(
                      fontSize: 32,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    Strings.howPaint,
                    style: TextStyle(
                      fontSize: 22,
                      color: CustomColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Icon(Icons.format_paint)),
              ],
            ),
            const Text(
              Strings.instructionFirstCoat,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 40),
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
                  child: Text(
                    Strings.tree,
                    style: TextStyle(
                      fontSize: 32,
                      color: CustomColors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    Strings.passTheInk,
                    style: TextStyle(
                      fontSize: 22,
                      color: CustomColors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Icon(Icons.format_paint)),
              ],
            ),
            const Text(
              Strings.instructionpassTheInk,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
