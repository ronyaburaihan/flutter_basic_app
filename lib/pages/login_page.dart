import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome Back $name!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter Password"),
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap: () async {
                        setState(() => {changeButton = !changeButton});
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, AppRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 45,
                        width: changeButton ? 45 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 45 : 8)),
                      ),
                    ),
                    /*ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(200, 40)),
                        onPressed: () =>
                            {Navigator.pushNamed(context, AppRoutes.homeRoute)},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ))*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
