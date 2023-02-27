import 'package:flutter/material.dart';
import 'package:gdsc1/customShape.dart';
import 'package:gdsc1/screens/loginScreen.dart';
import 'package:gdsc1/widgets/CustomTextFormField.dart';
import 'package:gdsc1/widgets/CustomTextButton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword = true;
  bool isConfirmPassword = true;

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

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
                  child: Stack(
                    children: [
                      Container(
                        height: height / 3,
                        width: width,
                        color: Colors.deepPurple,
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: height / 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: height / 20,
                        left: width / 20,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 20,
                ),
                CustormTextFormField(
                  controller: nameController,
                  labelText: 'Full Name',
                  hintText: 'Eslam Magdy',
                  prefixIcon: Icons.account_box,
                  textInputType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
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
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                CustormTextFormField(
                  controller: confirmPasswordController,
                  labelText: 'Confirm Password',
                  hintText: '••••••••',
                  prefixIcon: Icons.lock_rounded,
                  suffixIcon: isConfirmPassword
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onPressed: () {
                    setState(() {
                      isConfirmPassword = !isConfirmPassword;
                    });
                  },
                  obscureText: isConfirmPassword,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password again';
                    }
                    if (confirmPasswordController.text !=
                        passwordController.text) {
                      return 'Password and Confirm Password are not the same';
                    }
                    return null;
                  },
                ),
                CustormTextFormField(
                  controller: phoneController,
                  labelText: 'Phone Number',
                  hintText: '+20 00 0000 0000',
                  prefixIcon: Icons.phone,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone';
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
                      return;
                    }
                    return;
                  },
                  text: 'Register',
                  color: Colors.white,
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(
                      horizontal: width / 3.3, vertical: height / 60),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                CustomTextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
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
