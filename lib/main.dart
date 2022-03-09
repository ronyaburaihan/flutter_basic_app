import 'package:flutter/material.dart';
import 'package:flutter_basic_app/pages/home_page.dart';
import 'package:flutter_basic_app/pages/login_page.dart';
import 'package:flutter_basic_app/utils/routes.dart';
import 'package:flutter_basic_app/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegetables(bag: true);
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: true,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        AppRoutes.homeRoute: (context) => HomePage(),
        AppRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }

  bringVegetables({required bool bag, int price = 100}) {}
}
