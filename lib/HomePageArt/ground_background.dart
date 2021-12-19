import 'package:flutter/cupertino.dart';

class Ground extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final radius = 5 * size.width / 3.5;

    final circleColor = Color.alphaBlend(
    const Color(0xFFc8793c),
    const Color(0xFFa45c1e),
  );
    
    Offset center = Offset(width * 0.5, height * 1.3);

    // [circlePaint] is the paint with a linear gradient of 3 different colors.
    // Starts from top center to bottom center
    Paint circlePaint = Paint();
    circlePaint.color = circleColor;
    canvas.drawCircle(center, radius, circlePaint);  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
