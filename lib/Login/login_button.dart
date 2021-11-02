import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  LoginButton({Key? key}) : super(key: key);

  final TextStyle textStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontSize: 15,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
  );

  final ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(1, 0.4),
      child: Container(
        width: 135,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color(0xFFFFEC19).withOpacity(0.7),
                const Color(0xFFFFC100).withOpacity(0.7),
                const Color(0xFFFF9800).withOpacity(0.7),
              ]),
        ),
        padding: const EdgeInsets.all(12),
        child: ElevatedButton(
          style: buttonStyle,
          child: Text(
            'LOGIN',
            style: textStyle,
          ),
          onPressed: () {
            print("hi");
          },
        ),
      ),
    );
  }
}
