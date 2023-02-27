import 'package:flutter/material.dart';
import 'package:gdsc1/customShape.dart';
import 'package:gdsc1/screens/animatedListScreen.dart';
import 'package:gdsc1/screens/registerScreen.dart';
import 'package:gdsc1/widgets/CustomTextButton.dart';
import 'package:gdsc1/widgets/CustomTextFormField.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ClipPath(
                  clipper: CustomShape(),
                  child: Container(
                    height: height / 3,
                    width: width,
                    color: Colors.deepPurple,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                CustormTextFormField(
                  controller: emailController,
                  labelText: 'Email',
                  hintText: 'test@gmail.com',
                  prefixIcon: Icons.email,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(
                            r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                CustormTextFormField(
                  controller: passwordController,
                  labelText: 'Password',
                  hintText: '••••••••',
                  prefixIcon: Icons.lock_rounded,
                  suffixIcon:
                      isPassword ? Icons.visibility : Icons.visibility_off,
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  obscureText: isPassword,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                CustomTextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimatedListScreen()),
                      );
                      return;
                    }
                    return;
                  },
                  text: 'Login',
                  color: Colors.deepPurple,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 3, vertical: height / 60),
                  side: BorderSide(
                    color: Colors.deepPurple,
                    width: 1,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  text: 'Register',
                  color: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 3.3, vertical: height / 60),
                ),
                SizedBox(
                  height: height / 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
