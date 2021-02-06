import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputWidget extends StatelessWidget {
  String label = "";
  TextEditingController controller = TextEditingController();
  TextInputType keyboardType = TextInputType.text;

  InputWidget(
      {@required this.controller,
      @required this.label,
      @required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: TextFormField(
          controller: this.controller,
          keyboardType: this.keyboardType,
          decoration: InputDecoration(
              labelText: this.label,
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300))),
    );
  }
}
