import 'package:flutter/material.dart';

import 'package:animal_classifier/home_page.dart';

class IndexBackButton extends StatelessWidget {
  IndexBackButton({Key? key}) : super(key: key);

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: const Color(0xFF8d6852),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.85),
      child: OutlinedButton(
          style: buttonStyle,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFFfbefdf),
          )),
    );
  }
}
