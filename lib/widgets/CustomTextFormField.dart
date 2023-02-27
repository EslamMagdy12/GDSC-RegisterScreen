import 'package:flutter/material.dart';

Widget CustormTextFormField(
    {required TextEditingController? controller,
    required String labelText,
    required String hintText,
    required IconData prefixIcon,
    IconData? suffixIcon,
    required TextInputType textInputType,
    bool obscureText = false,
    required String? Function(String?)? validator,
    void Function()? onPressed}) {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[200],
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onPressed,
                icon: Icon(
                  suffixIcon,
                ),
              )
            : null,
        labelText: labelText,
        hintText: hintText,
      ),
      validator: validator,
    ),
  );
}
