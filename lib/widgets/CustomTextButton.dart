import 'package:flutter/material.dart';

Widget CustomTextButton(
    {void Function()? onPressed,
    required String text,
    Color? color,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    BorderSide? side}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 20,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: TextButton.styleFrom(
      backgroundColor: backgroundColor,
      padding: padding,
      side: side,
    ),
  );
}
