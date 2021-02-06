import 'package:cyprus_museum/pages/main.page.dart';
import 'package:cyprus_museum/routes.dart';
import 'package:cyprus_museum/theme.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyprus Modern Art Museum',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: MainPage.routeName,
      routes: routes,
    );
  }
}
