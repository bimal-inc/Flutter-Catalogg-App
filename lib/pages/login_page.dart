// import material package
import 'package:flutter/material.dart';

class LoginPagee extends StatelessWidget {
  const LoginPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text("WelCome to Login Page",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        print("hello bimal");
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom()),
                ],
              ),
            )
          ],
        ));
  }
}
