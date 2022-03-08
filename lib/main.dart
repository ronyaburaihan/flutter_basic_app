import 'package:flutter/material.dart';
import 'package:flutter_basic_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegetables(bag: true);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {"/": (context) => HomePage()},
    );
  }

  bringVegetables({required bool bag, int price = 100}) {}
}
