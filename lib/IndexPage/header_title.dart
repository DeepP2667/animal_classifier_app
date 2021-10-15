import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderTitle extends StatelessWidget {
  HeaderTitle({Key? key}) : super(key: key);

  static Color textColor = Color.alphaBlend(
    const Color(0xFF8d6852),
    const Color(0xFF462e25),
  );

  final TextStyle titleTextStyle = GoogleFonts.stoke(
    textStyle: TextStyle(
      fontSize: 25,
      color: textColor,
      fontWeight: FontWeight.bold,
    ),
  );

  final TextStyle seenTextStyle = GoogleFonts.stoke(
    textStyle: TextStyle(
      fontSize: 15,
      color: textColor.withOpacity(0.6),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -0.6),
            child: Text(
              "INDEX",
              style: titleTextStyle,
            ),
          ),
          Align(
            alignment: const Alignment(0, .3),
            child: Text(
              "Found: ",
              style: seenTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
