import 'package:flutter/material.dart';

class UndiscoveredIcon extends StatelessWidget {
  UndiscoveredIcon({Key? key}) : super(key: key);

  final TextStyle textStyle = const TextStyle(
    fontSize: 20,
    color: Color(0xFF8d6852),
    fontWeight: FontWeight.bold,
  );
  
   static Color backgroundColor = Color.alphaBlend(
    const Color(0xFFfbefdf),
    const Color(0xFF462e25),
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(85, 75),
    primary: backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 7.0,
        right: 2.0,
      ),
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {print("hi");},
        child: Text(
          "?",
          style: textStyle,
        ),
      ),
    );
  }
}
