import 'package:flutter/material.dart';

class UndiscoveredIcon extends StatelessWidget {
  UndiscoveredIcon({Key? key}) : super(key: key);

  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(85, 75),
    primary: Colors.blue[100],
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
