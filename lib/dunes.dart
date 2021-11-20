import 'package:flutter/cupertino.dart';

class FirstDune extends CustomClipper<Path> {

  @override
  Path getClip(Size size){

    Path path = Path();
    path.lineTo(0, 2.3 * size.height / 3);

    var firstControl = Offset(size.width / 8, 1.45 * size.height / 2);
    var secondControl = Offset(size.width / 3, 2.5 * size.height / 3);
    var firstEnd = Offset(size.width / 2,  1.5 * size.height / 2);
    path.cubicTo(firstControl.dx, firstControl.dy, secondControl.dx, secondControl.dy, firstEnd.dx, firstEnd.dy);


    var arcEnd = Offset(size.width / 1.6,  1.5 * size.height / 2);
    path.arcToPoint(arcEnd, radius: Radius.elliptical(size.width * 0.09, size.height * 0.06));

    var thirdControl = Offset(size.width / 1.25,  1.7 * size.height / 2);
    var fourthControl = Offset(size.width / 1.25, 2.3 * size.height / 3);
    var secondEnd = Offset(size.width, 1.52 * size.height / 2);
    path.cubicTo(thirdControl.dx, thirdControl.dy, fourthControl.dx, fourthControl.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
 
}