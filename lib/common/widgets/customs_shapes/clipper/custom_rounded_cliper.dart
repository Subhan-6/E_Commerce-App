import 'package:flutter/cupertino.dart';

class UCustomRoundedEdges extends CustomClipper<Path> { @override
  Path getClip(Size size) {
    Path path = Path();
    // top to bottom line
path.lineTo(0, size.height -40);
// first curve
Offset firstPointCure1 = Offset (40,size.height);
Offset secondPointCure1 = Offset (size.width / 2,size.height);
path.quadraticBezierTo(firstPointCure1.dx, firstPointCure1.dy, secondPointCure1.dx, secondPointCure1.dy);
// second curve
Offset firstPointCure2 = Offset (size.width -40,size.height);
Offset secondPointCure2 = Offset (size.width,size.height -40);
path.quadraticBezierTo(firstPointCure2.dx, firstPointCure2.dy, secondPointCure2.dx, secondPointCure2.dy);
//bottom to top line

path.lineTo(size.width, 0);

 return path;


  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }
}
