import 'package:flutter/material.dart';

const brightness = Brightness.light;
// const primaryColor = const Color(0xFFEBBB41);
const primaryColor = const Color(0xFF42A5F5);
const accentColor = const Color(0xFF000000);

ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(
        fontFamily: "Montserrat",
      ),
      bodyText1: TextStyle(
        fontFamily: "Montserrat",
      ),
      button: TextStyle(
        fontFamily: "Montserrat",
      ),
      caption: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline4: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline3: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline2: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline1: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline5: TextStyle(
        fontFamily: "Montserrat",
      ),
      overline: TextStyle(
        fontFamily: "Montserrat",
      ),
      subtitle1: TextStyle(
        fontFamily: "Montserrat",
      ),
      subtitle2: TextStyle(
        fontFamily: "Montserrat",
      ),
      headline6: TextStyle(
        fontFamily: "Montserrat",
      ),
    ),
    primaryColor: primaryColor,
    // accentColor: accentColor,
    // scaffoldBackgroundColor: Color(0xFFFAFAFA),
    // splashColor: Colors.transparent,
    // highlightColor: Colors.transparent,
  );
}
