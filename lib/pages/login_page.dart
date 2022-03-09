import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 30),
                Image.asset(
                  "assets/images/image_hey.png",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6)
                            return "Password should be atleast 6 digits";
                          return null;
                        },
                      ),
                      SizedBox(height: 40),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 45 : 8),
                        child: InkWell(
                          onTap: () => gotoHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 45,
                            width: changeButton ? 45 : 200,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  gotoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() => {changeButton = true});
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, AppRoutes.homeRoute);
      setState(() => {changeButton = false});
    }
  }
}
