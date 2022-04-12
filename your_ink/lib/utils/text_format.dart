import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormat extends StatelessWidget {
  final string;
  final fontSize;
  final fontWeight;
  final color;

  const TextFormat({Key? key, this.string, this.fontSize, this.fontWeight, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(string,
        style: GoogleFonts.openSans(
          textStyle: Theme.of(context).textTheme.headline4,
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ));
  }
}
