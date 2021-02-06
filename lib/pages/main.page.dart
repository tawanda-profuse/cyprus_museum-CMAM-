import 'package:cyprus_museum/Screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:cyprus_museum/pages/home.page.dart';
import 'package:cyprus_museum/themes/app.theme.dart';

class MainPage extends StatelessWidget {
  static String routeName = "/main_page";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyprus Museum',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: SplashScreen(),
      theme: appTheme(),
    );
  }
}
