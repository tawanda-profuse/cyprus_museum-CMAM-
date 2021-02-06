import 'package:flutter/material.dart';

class ImageContentWidget extends StatelessWidget {
  final String content;

  ImageContentWidget({@required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            // child: Image.asset(beacon.conteudo, fit: BoxFit.fill)),
            child: Image.network(content, fit: BoxFit.fill)),
      ),
    );
  }
}
