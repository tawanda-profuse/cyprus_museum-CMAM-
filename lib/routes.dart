import 'package:cyprus_museum/pages/main.page.dart';
import 'package:flutter/widgets.dart';
// import 'package:cyprus_museum/Screens/cart/cart_screen.dart';
import 'package:cyprus_museum/Screens/complete_profile/complete_profile_screen.dart';
// import 'package:cyprus_museum/Screens/details/details_screen.dart';
import 'package:cyprus_museum/Screens/forgot_password/forgot_password_screen.dart';
// import 'package:cyprus_museum/screens/home/home_screen.dart';
import 'package:cyprus_museum/Screens/login_success/login_success_screen.dart';
import 'package:cyprus_museum/Screens/otp/otp_screen.dart';
import 'package:cyprus_museum/Screens/profile/profile_screen.dart';
import 'package:cyprus_museum/Screens/sign_in/sign_in_screen.dart';
import 'package:cyprus_museum/Screens/splash/splash_screen.dart';
import 'package:cyprus_museum/HomeScreen.dart';
import 'Screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MainPage.routeName: (context) => MainPage(),
};
