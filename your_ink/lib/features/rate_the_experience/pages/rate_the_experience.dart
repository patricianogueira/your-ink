import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';

class RateTheExperience extends StatelessWidget {
  const RateTheExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.write,
      body: Padding(
        padding: const EdgeInsets.only(top: 260, bottom: 265, left: 10, right: 10),
        child: Card(
          color: CustomColors.greyCard,
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                Strings.rateTheExperience,
                style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
                color: CustomColors.black,),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, top: 30, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child:
                          Image.asset('assets/boring.png', width: 60, height: 60),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: GestureDetector(
                        child:
                            Image.asset('assets/sad.png', width: 60, height: 60),
                        onTap: () {},
                      ),
                    ),
                    GestureDetector(
                      child:
                          Image.asset('assets/in-love.png', width: 60, height: 60),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 50, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(Strings.weak),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Text(Strings.median),
                    ),
                    Text(Strings.excellent),
                  ],
                ),
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
    );
  }
}
