import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDisplay extends StatelessWidget {
  final dynamic imageFile;

  ImageDisplay({Key? key, required this.imageFile}) : super(key: key);

  final TextStyle textStyle = GoogleFonts.stoke(
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color(0xFF573625),
      fontWeight: FontWeight.bold,
    ),
  );

  Widget checkImage(width) {
    if (imageFile == null) {
      return Container(
        width: width,
        height: 200,
        color: const Color(0xFFf7e8e3),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            "No Image Loaded",
            style: textStyle,
          ),
        ),
      );
    }

    return Image.file(
      imageFile,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FittedBox(
          child: checkImage(MediaQuery.of(context).size.width),
          fit: imageFile != null ? BoxFit.contain : BoxFit.none,
        ),
      ),
    );
  }
}