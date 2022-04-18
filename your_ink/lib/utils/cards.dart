import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';

class MyCards extends StatefulWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back,
                      color: CustomColors.grey,
                      size: 60,
                    ),
                    onTap: () {},
                  ),
                  //const NewsCards(),
                  Image.asset(
                    'assets/suvinil.png',
                    width: 200,
                    height: 200,
                  ),
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: CustomColors.grey,
                      size: 60,
                    ),
                    onTap: () {},
                  )
                ],
              ),
              const Text(
                Strings.suvinylInk,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        Strings.howPaint,
                        style: TextStyle(
                            color: CustomColors.write,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.purple,
                        fixedSize: const Size(120, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        Strings.takeQuestion,
                        style: TextStyle(
                            color: CustomColors.write,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.greyArrow,
                        fixedSize: const Size(120, 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        //-----------------------------------------------
        
        SizedBox(
          height: 170,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 62, right: 62, top: 20, bottom: 50),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //const SizedBox(height: 10),
                    const Expanded(
                      child: Text(
                        Strings.differentials,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.brush),
                        SizedBox(width: 16),
                        Text(
                          Strings.string1,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: CustomColors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Row(
                        children: const [
                          Icon(Icons.auto_awesome_outlined),
                          SizedBox(width: 16),
                          Text(
                            Strings.string2,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: CustomColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.format_paint),
                        SizedBox(width: 16),
                        Text(
                          Strings.string3,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: CustomColors.black,
                          ),
                        ),
                      ],
                    ),
                    //const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
