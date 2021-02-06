import 'package:flutter/material.dart';

class AgradecimentoPage extends StatelessWidget {
  final String greetingText = "Obrigado\n"
      "pela sua visita\n\n";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/cadastro.png"),
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(greetingText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          fontSize: 60,
                          color: Colors.black)),
                ),
              ],
            ),
          ),
        ));
  }
}
