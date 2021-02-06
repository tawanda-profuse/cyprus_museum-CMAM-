import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:cyprus_museum/Screens/splash/splash_screen.dart';
import 'package:cyprus_museum/pages/menu.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[400],
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/exhibit.jpg"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FlareActor(
                          "assets/images/next.flr",
                          animation: "telaInicial",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
