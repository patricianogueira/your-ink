import 'package:flutter/material.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class PaintOptions extends StatelessWidget {
  const PaintOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.greyCard,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_sharp,
            color: CustomColors.black,
          ),
          onTap: (){},
        ),
        backgroundColor: CustomColors.greyCard,
      ),
      body: ListView(
        children: [
          const Center(
            child: TextFormat(
              string: Strings.paintOptions,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: CustomColors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(31.0),
            child: Card(
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
                      Image.asset(
                        'assets/tinta.jpg',
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
                  const TextFormat(
                    string: Strings.suvinylInk,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.black,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormat(
                    string: Strings.differentials,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.black,
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.brush),
                    SizedBox(width: 16),
                    TextFormat(
                      string: Strings.string1,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: CustomColors.black,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.auto_awesome_outlined),
                    SizedBox(width: 16),
                    TextFormat(
                      string: Strings.string2,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: CustomColors.black,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.format_paint),
                    SizedBox(width: 16),
                    TextFormat(
                      string: Strings.string3,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: CustomColors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
              ]),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              Strings.buyHere,
              style: TextStyle(
                  color: CustomColors.write, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              primary: CustomColors.purple,
              fixedSize: const Size(150, 50),
              shape: const StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
