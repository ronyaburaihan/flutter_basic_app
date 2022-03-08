import 'package:flutter/material.dart';
import 'package:flutter_basic_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                "Welcome Back!",
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter Password"),
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(200, 40)),
                        onPressed: () =>
                            {Navigator.pushNamed(context, AppRoutes.homeRoute)},
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
