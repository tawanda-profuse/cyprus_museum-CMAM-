import 'package:flutter/material.dart';
import 'package:cyprus_museum/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify your account"),
      ),
      body: Body(),
    );
  }
}
