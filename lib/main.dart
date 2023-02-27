import 'package:flutter/material.dart';
import 'package:gdsc1/screens/loginScreen.dart';
import 'package:gdsc1/screens/registerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      title: 'GDSC Register/Login Screen',
      home: LoginScreen(),
    );
  }
}
