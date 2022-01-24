// import material package
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping/utils/routes.dart';

class LoginPagee extends StatefulWidget {
  const LoginPagee({Key? key}) : super(key: key);

  @override
  State<LoginPagee> createState() => _LoginPageeState();
}

class _LoginPageeState extends State<LoginPagee> {
  bool ChangeButton = false;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text("WelCome $name",
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
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
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

                    InkWell(
                      onTap: () async {
                        setState(() {
                          ChangeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.HomeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: ChangeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: ChangeButton
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ChangeButton ? 50 : 8),
                          color: Colors.deepPurple[600],
                          // shape: ChangeButton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    //     },
                    //     child: Text("Login"),
                    //     style:
                    //         TextButton.styleFrom(minimumSize: Size(150, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
