import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SignUpBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final radius = 2 * width / 3;
    Paint backgroundPaint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    backgroundPaint.color = const Color(0xFF303030);
    canvas.drawPath(mainBackground, backgroundPaint);

    var rect = Offset.zero & size;
    Offset center = Offset(width * 0.5, height * 0.68);
    Paint circlePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF8229DE),
          Color(0xFFA51FF0),
          Color(0xFF3856E7),
        ],
      ).createShader(rect);
    canvas.drawCircle(center, radius, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
