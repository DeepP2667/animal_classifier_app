import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_button.dart';
import 'sign_in_background.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextStyle signinTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontSize: 30,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
  );

  final TextStyle continueTextStyle = GoogleFonts.openSans(
    textStyle: TextStyle(
      fontSize: 15,
      color: const Color(0xFF000000).withOpacity(0.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: SignUpBackground(),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFECEFF1),
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
                    child: Text("SIGN IN", style: signinTextStyle),
                  ),
                ),
                Align(
                  alignment: const Alignment(-1, -.18),
                  child: SizedBox(
                    height: 100,
                    child: Text("Please sign in to continue.", style: continueTextStyle),
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
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
