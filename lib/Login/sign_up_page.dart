import 'package:animal_classifier/Login/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:animal_classifier/Login/sign_up_background.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({ Key? key }) : super(key: key);

  final TextStyle signinTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontSize: 30,
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
  );

  final TextStyle signUpTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontSize: 12,
    ),
  );

  final TextStyle signUpButton = GoogleFonts.openSans(
    textStyle: const TextStyle(
      fontSize: 12,
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
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: SignUpBackground(),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFECEFF1),
            borderRadius: BorderRadius.all(Radius.circular(30)),
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
                    child: Text("SIGN UP", style: signinTextStyle),
                  ),
                ),
                Align(
                  alignment: const Alignment(-1, -.18),
                  child: SizedBox(
                    height: 100,
                    child: Text("Enter a username",
                        style: continueTextStyle),
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 15),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      border: UnderlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                SignUpButton(),
                Align(
                  alignment: const Alignment(0, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account? ", style: signUpTextStyle),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Sign in", style: signUpTextStyle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
