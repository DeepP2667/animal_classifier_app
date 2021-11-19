import 'package:flutter/cupertino.dart';

class FirstDune extends CustomClipper<Path> {

  @override
  Path getClip(Size size){
    

    Path path = Path();
    path.lineTo(0, size.height);
    var firstControl = Offset(size.width / 5, size.height - 130);
    var firstEnd = Offset(size.width / 2.25, size.height / 2);
    path.quadraticBezierTo(firstControl.dx, firstControl.dy, firstEnd.dx, firstEnd.dy);
    


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
 
}