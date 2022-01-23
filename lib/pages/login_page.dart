// import material package
import 'package:flutter/material.dart';

class LoginPagee extends StatelessWidget {
  const LoginPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
