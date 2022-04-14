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
      backgroundColor: CustomColors.purple,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 100),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const SizedBox(height: 97.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/paint.png',
                  height: 52,
                  width: 52,
                ),
                const Text(
                  Strings.xtintas,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.write,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            // const TextFormat(
            //   string: Strings.getInPlatform,
            //   fontSize: 22,
            //   fontWeight: FontWeight.bold,
            //   color: CustomColors.write,
            // ),
            const Text(
              Strings.getInPlatform,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: CustomColors.write,
              ),
            ),
            const SizedBox(height: 37.0),
            // const TextFormat(
            //   string: Strings.email,
            //   fontSize: 16,
            //   fontWeight: FontWeight.bold,
            //   color: CustomColors.write,
            // ),
            const Text(
              Strings.email,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.write,
              ),
            ),
            const SizedBox(height: 21.0),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Strings.exampleEmail,
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autofocus: false,
            ),
            const SizedBox(height: 21),
            // const TextFormat(
            //   string: Strings.password,
            //   fontSize: 16,
            //   fontWeight: FontWeight.bold,
            //   color: CustomColors.write,
            // ),
            const Text(
              Strings.password,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: CustomColors.write,
              ),
            ),
            const SizedBox(height: 21.0),
            TextField(
              obscureText: obscureText,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: Strings.maskedPassword,
              ).copyWith(
                suffixIcon: IconButton(
                  icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => setState(() {
                    obscureText = !obscureText;
                  }),
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
                  textAlign: TextAlign.center,
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
