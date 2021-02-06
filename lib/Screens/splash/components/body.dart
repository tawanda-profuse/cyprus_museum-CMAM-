import 'package:cyprus_museum/Screens/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:cyprus_museum/constants.dart';
import 'package:cyprus_museum/screens/sign_in/sign_in_screen.dart';
import 'package:cyprus_museum/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Cyprus Museum Welcomes You!",
      "image": "assets/images/splash_1.jpg"
    },
    {
      "text": "The best place to find art \nin North Cyprus",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "BE AMAZED FROM HOME. \nWITH CMAM",
      "image": "assets/images/splash_3.png"
    },
    {"text": "Stay safe \n", "image": "assets/images/splash_4.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignInScreen();
                            },
                          ),
                        );
                        // Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "View Gallery",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Gallery();
                            },
                          ),
                        );
                        // Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
