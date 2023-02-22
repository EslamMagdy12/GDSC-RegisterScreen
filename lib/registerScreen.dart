import 'package:flutter/material.dart';
import 'package:gdsc1/customShape.dart';

class registerScreen extends StatefulWidget {
  const registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  var passwordObsecure = true;
  var confirmObsecure = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: height * 0.3,
                  width: width,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
              Container(
                width: width * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.account_box),
                    hintText: 'Eslam Magdy',
                    labelText: 'Full Name',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: width * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.email),
                    hintText: 'test@gmail.com',
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: width * 0.9,
                child: TextFormField(
                  obscureText: passwordObsecure,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObsecure = !passwordObsecure;
                        });
                      },
                      icon: passwordObsecure
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    labelText: 'Password',
                    hintText: '••••••••',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: width * 0.9,
                child: TextFormField(
                  obscureText: confirmObsecure,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          confirmObsecure = !confirmObsecure;
                        });
                      },
                      icon: confirmObsecure
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                    labelText: 'Confirm Password',
                    hintText: '••••••••',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: width * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.phone_rounded),
                    hintText: '+20 00 0000 0000',
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              SizedBox(
                height: 45.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  fixedSize: Size(width * 0.9, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.purple),
                  ),
                ),
                onPressed: () {},
                child: Text('Register'),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                  fixedSize: Size(width * 0.9, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.purple),
                  ),
                ),
                onPressed: () {},
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
