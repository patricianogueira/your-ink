import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_ink/pages/%20paint_options.dart';
import 'package:your_ink/utils/custom_colors.dart';
import 'package:your_ink/utils/strings.dart';
import 'package:your_ink/utils/text_format.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: CustomColors.purple,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CustomColors.write,
              CustomColors.purple,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 0.0),
            stops: [0.0, 0.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 97.5),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/bucket.jpg',
                height: 50,
                width: 50,
              ),
              const TextFormat(
                string: Strings.xtintas,
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: CustomColors.write,
              )
            ]),
            const SizedBox(
              height: 79,
            ),
            const TextFormat(
              string: Strings.getInPlatform,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: CustomColors.write,
            ),
            const SizedBox(height: 37.0),
            const TextFormat(
              string: Strings.email,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: CustomColors.write,
            ),
            const SizedBox(height: 21.0),
            Container(
              width: 348,
              height: 56,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: Strings.exampleEmail,
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 21),
            const TextFormat(
              string: Strings.password,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: CustomColors.write,
            ),
            const SizedBox(height: 21.0),
            Container(
              width: 340,
              height: 56,
              child: TextField(
                obscureText: obscureText,
                decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: Strings.maskedPassword)
                    .copyWith(
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() {
                      obscureText = !obscureText;
                    }),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                Strings.login,
                style: TextStyle(color: CustomColors.purple),
              ),
              style: ElevatedButton.styleFrom(
                primary: CustomColors.write,
                fixedSize: const Size(200, 50),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            InkWell(
                child: const Text(
                  Strings.forgotPassword,
                  style: TextStyle(color: CustomColors.write),
                ),
                onTap: () {
                  setState(() {
                    const PaintOptions();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
