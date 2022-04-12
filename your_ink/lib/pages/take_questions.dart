import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class TakeQuestions extends StatelessWidget {
  const TakeQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 360,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: CustomColors.greyCard,
          ),
          child: Card(
            color: CustomColors.greyCard,
            elevation: 3,
            child: Column(
              children: [
                const SizedBox(height: 15,),
                const TextFormat(string: Strings.takeQuestions, fontSize: 18, fontWeight: FontWeight.bold, color: CustomColors.black,),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 15),
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
                  child: const TextFormat(string: Strings.toSend, fontSize: 16, fontWeight: FontWeight.w600, color: CustomColors.write,),
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: CustomColors.purple,
                    fixedSize: const Size(320, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
