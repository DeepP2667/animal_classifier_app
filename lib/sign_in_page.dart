import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(
            color: const Color(0XFFFFE082),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.only(bottom: 20, top: 40, left: 20, right: 20),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(-1, 0),
                child: SizedBox(
                  height: 300,
                  child: Text("Sign In", style: textStyle),
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
            ],
          ),
        ),
      ),
    );
  }
}
