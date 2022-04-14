import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class TakeQuestions extends StatelessWidget {
  const TakeQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.write,
      body: Padding(
        padding: const EdgeInsets.only(top: 260, bottom: 265, left: 10, right: 10),
        child: Card(
          color: CustomColors.greyCard,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            child: Column(
              children: [
                const Text(
                  Strings.takeQuestions,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.black,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 20, bottom: 15),
                  child: TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: Strings.write,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      )),
                ),
                ElevatedButton(
                  child: const Text(
                    Strings.toSend,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.write,
                    ),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: CustomColors.purple,
                    fixedSize: const Size(320, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
