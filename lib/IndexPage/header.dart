import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './header_title.dart';

class IndexHeader extends StatelessWidget {
  IndexHeader({Key? key}) : super(key: key);

  final TextStyle textStyle = GoogleFonts.robotoMono(
    textStyle: TextStyle(
      fontSize: 20,
      color: Colors.grey[700],
      fontWeight: FontWeight.bold,
    ),
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.cyan[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color> [
            Color(0XFFECEFF1),
            Color(0XFFE3F2FD),
          ],
        ),
      ),
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          HeaderTitle(),
        ],
      ),
    );
  }
}
