import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class RateTheExperience extends StatelessWidget {
  const RateTheExperience({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const TextFormat(
                  string: Strings.rateTheExperience,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 30, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset('assets/boring.jpg', width: 60, height: 60),
                        onTap: (){},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: GestureDetector(
                          child: Image.asset('assets/sad.jpg', width: 60, height: 60),
                          onTap: (){},
                        ),
                      ),
                      GestureDetector(
                        child: Image.asset('assets/love.jpg', width: 60, height: 60),
                        onTap: (){},
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const[
                    Text(Strings.weak),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Text(Strings.median),
                    ),
                    Text(Strings.excellent),
                  ],
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  child: const TextFormat(
                    string: Strings.toSend,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.write,
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
      ],
    );
  }
}
