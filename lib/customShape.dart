import 'package:flutter/material.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    Path path = Path();
    path.lineTo(0, height);
    path.quadraticBezierTo(width / 4, height - 40, width / 2, height - 20);
    path.quadraticBezierTo(width * 3 / 4, height, width, height - 40);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
