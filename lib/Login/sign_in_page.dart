import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_button.dart';
import 'package:animal_classifier/Login/sign_up_page.dart';
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
        painter: SignInBackground(),
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
                    child: Text("SIGN IN", style: signinTextStyle),
                  ),
                ),
                Align(
                  alignment: const Alignment(-1, -.18),
                  child: SizedBox(
                    height: 100,
                    child: Text("Please sign in to continue.",
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
                LoginButton(),
                Align(
                  alignment: const Alignment(0, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ", style: signUpTextStyle),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text("Sign up", style: signUpTextStyle),
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
