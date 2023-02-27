import 'package:flutter/material.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.lineTo(0, height / 1.25);
    path.cubicTo(
      width / 2 * 0.6,
      height * 0.5,
      width,
      height * 1.4,
      width * 1.2,
      height / 1.5,
    );
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
