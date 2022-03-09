import 'package:flutter/material.dart';
import 'package:flutter_basic_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  String sdkName = "Flutter";
  String appType = "Basic";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $sdkName $appType App"),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
