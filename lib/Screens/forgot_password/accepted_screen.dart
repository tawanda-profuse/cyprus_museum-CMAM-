import 'package:flutter/material.dart';

import 'accepted.dart';

class AcceptedScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // title: Text("Forgot Password"),
          ),
      body: Accepted(),
    );
  }
}
