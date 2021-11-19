import 'package:flutter/cupertino.dart';

class Background extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    
    Rect background = Rect.fromLTRB(0, 0, width, height);

    Paint backgroundPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0XFFFFE082),
          Color(0XFFFFE0B2),
        ],
      ).createShader(background);

    Path mainBackground = Path();
    // Adds a rectangle the size of the device
    mainBackground.addRect(background);
    canvas.drawPath(mainBackground, backgroundPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  
}