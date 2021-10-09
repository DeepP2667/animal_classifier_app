import 'package:flutter/material.dart';

import 'package:animal_classifier/main.dart';

class IndexBackButton extends StatelessWidget {
  IndexBackButton({Key? key}) : super(key: key);

  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.cyan[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0,0.85),
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: () {
          Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) => const MyApp(),
            ),
          );
        },
        child: Text(
          "<-",
          style: textStyle,
        ),
      ),
    );
  }
}
