import 'package:flutter/material.dart';

class TakePicture extends StatelessWidget {
  TakePicture({Key? key}) : super(key: key);

  final String pictureText = "Take picture";

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.cyan[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0,.3),
      child: Container(
        width: 200,
        height: 100,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(14.0),
        child: ElevatedButton(
          onPressed: null,
          child: Text(
            pictureText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          style: buttonStyle,
        ),
      ),
    );
  }
}
