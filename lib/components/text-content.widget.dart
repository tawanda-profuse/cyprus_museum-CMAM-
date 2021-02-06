import 'package:flutter/material.dart';

class TextContentWidget extends StatelessWidget {
  final String content;

  TextContentWidget({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Text(
              content,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  textBaseline: TextBaseline.alphabetic),
            ),
          ),
        ),
      );
  }
}