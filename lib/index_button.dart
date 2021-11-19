import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'IndexPage/index_page.dart';

void main() => runApp(IndexButton());

class IndexButton extends StatelessWidget {
  IndexButton({Key? key}) : super(key: key);

  final String indexText = "Index";

  final TextStyle textStyle = GoogleFonts.stoke(
    textStyle: TextStyle(
      fontSize: 18,
      color: const Color(0xFF4d290b).withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: const Color(0xFFfac489),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.8),
      child: Container(
        width: 200,
        height: 100,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: buttonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndexPage(),
              ),
            );
          },
          child: Text(
            indexText,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
