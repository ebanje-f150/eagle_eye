
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinePathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 420);
    path.quadraticBezierTo(
        size.width /-20, size.height, 
  size.width, size.height - 300);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  
    throw UnimplementedError();
  }
}

class LinePathClass2 extends CustomClipper<Path> {
 @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, 
  size.width, size.height - 90);
    path.lineTo(size.width, 90);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  
    throw UnimplementedError();
  }
}


class LinePathClass3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 720);
    path.quadraticBezierTo(
        size.width /-20, size.height, 
  size.width, size.height - 700);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  
    throw UnimplementedError();
  }
}


class LinePathClass4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height);

    final Offset firstControlPoint = Offset(size.width / 4, size.height);
    final Offset firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final Offset secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    final Offset secondEndPoint = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}




class LinePathClass5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.lineTo(0.0, size.height);

    final Offset firstControlPoint = Offset(size.width / 4, size.height);
    final Offset firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    final Offset secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    final Offset secondEndPoint = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);

    path.lineTo(size.width, 0.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(10, size.height - 420);
    path.quadraticBezierTo(
        size.width /-10, size.height, 
  size.width, size.height - 300);
    path.lineTo(size.width, 3);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

