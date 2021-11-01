import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_button.dart';
import 'sign_in_background.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextStyle textStyle = GoogleFonts.stoke(
    textStyle: const TextStyle(
      fontSize: 27,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: SignUpBackground(),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFECEFF1),
            border: Border.all(
              color: const Color(0XFFFFE082),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          padding: const EdgeInsets.all(30),
          margin:
              const EdgeInsets.only(bottom: 60, top: 60, left: 40, right: 40),
          child: Center(
            child: Stack(
              children: [
                Align(
                  alignment: const Alignment(-1, 0),
                  child: SizedBox(
                    height: 300,
                    child: Text("SIGN IN", style: textStyle),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                const LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
