import 'package:flutter/material.dart';
import 'package:gdsc1/registerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GDSC1',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: RegisterApp(),
    );
  }
}

class RegisterApp extends StatefulWidget {
  const RegisterApp({Key? key}) : super(key: key);

  @override
  State<RegisterApp> createState() => _RegisterAppState();
}

class _RegisterAppState extends State<RegisterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: registerScreen(),
    );
  }
}
