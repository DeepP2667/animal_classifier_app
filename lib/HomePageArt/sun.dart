import 'package:flutter/cupertino.dart';

class Suns extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final radius = 0.3 * size.width / 2;
    Rect backgroundRect = Rect.fromLTRB(0, 0, width, height);
    Paint backgroundPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          const Color(0xFFdb8757).withOpacity(0.8),
          const Color(0xFFe49b7f).withOpacity(0.8),
          const Color(0xFFe3b098).withOpacity(0.8),
          const Color(0xFFcb9998).withOpacity(0.8),
          const Color(0xFF947fa0).withOpacity(0.8),
          const Color(0xFF83789c).withOpacity(0.8),
        ],
      ).createShader(backgroundRect);

    Path backgroundPath = Path();
    backgroundPath.addRect(Rect.fromLTRB(0, 0, width, height));
    canvas.drawPath(backgroundPath, backgroundPaint);

    Paint sunPaint = Paint();
    sunPaint.color = const Color(0xFFfff89e);
    Offset center = Offset(width / 3, 1.65 * height / 2);
    canvas.drawCircle(center, radius, sunPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
