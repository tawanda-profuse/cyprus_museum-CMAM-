import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:cyprus_museum/Screens/audio_guide/fire_storage_service.dart';
import 'package:cyprus_museum/Screens/audio_guide/myplatform.dart';
import 'package:cyprus_museum/Screens/audio_guide/platform.dart';

class TTSPluginRecipe extends StatefulWidget {
  @override
  _TTSPluginRecipeState createState() => _TTSPluginRecipeState();
}

class _TTSPluginRecipeState extends State<TTSPluginRecipe> {
  String description =
      "The Cyprus Museum of Modern Arts has an important collection with more than 8000 artworks dating from the 1940s to the present. The collection of the Cyprus Museum of Modern Arts consists of works of state artists from 14 Turkic states, representing their countries in the best way in the context of art history. The majority of the collection is kept in rooms specially designed for protection.";
  bool isPlaying = false;
  FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    initializeTts();
  }

  @override
  void dispose() {
    super.dispose();
    _flutterTts.stop();
  }

  initializeTts() {
    _flutterTts = FlutterTts();

    if (PlatformUtil.myPlatform() == MyPlatform.ANDROID) {
      setTtsLanguage();
    }
    // if (PlatformUtil.myPlatform() == MyPlatform.ANDROID) {
    //   _flutterTts.ttsInitHandler(() {
    //     setTtsLanguage();
    //   });
    // }
    else if (PlatformUtil.myPlatform() == MyPlatform.IOS) {
      setTtsLanguage();
    } else if (PlatformUtil.myPlatform() == MyPlatform.WEB) {
      //not-supported by plugin
    }

    _flutterTts.setStartHandler(() {
      setState(() {
        isPlaying = true;
      });
    });

    _flutterTts.setCompletionHandler(() {
      setState(() {
        isPlaying = false;
      });
    });

    _flutterTts.setErrorHandler((err) {
      setState(() {
        print("error occurred: " + err);
        isPlaying = false;
      });
    });
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _flutterTts.stop();
  // }

  void setTtsLanguage() async {
    await _flutterTts.setLanguage("en-US");
  }

  void speechSettings1() {
    // _flutterTts.setVoice("en-us-x-sfg#male_1-local");
    _flutterTts.setPitch(0.5);
    _flutterTts.setSpeechRate(.9);
  }

  // void speechSettings2() {
  //   _flutterTts.setVoice("en-us-x-sfg#male_2-local");
  //   _flutterTts.setPitch(1);
  //   _flutterTts.setSpeechRate(0.5);
  // }

  Future _speak(String text) async {
    if (text != null && text.isNotEmpty) {
      var result = await _flutterTts.speak(text);
      if (result == 1)
        setState(() {
          isPlaying = true;
        });
    }
  }

  Future _stop() async {
    var result = await _flutterTts.stop();
    if (result == 1)
      setState(() {
        isPlaying = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0)),
                gradient: LinearGradient(
                    colors: [Colors.blue[200], Colors.blue[200]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Museum Guide",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.25,
                            width: MediaQuery.of(context).size.width / 1.25,
                            child:
                                Image.asset("assets/griffith_observatory.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  // child: Text(description),
                ),
                playButton(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget playButton(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
            margin: const EdgeInsets.only(
                top: 30, left: 30.0, right: 30.0, bottom: 20.0),
            child: FlatButton(
              onPressed: () {
                //fetch another image
                setState(() {
                  //speechSettings1();
                  isPlaying ? _stop() : _speak(description);
                });
              },
              child: isPlaying
                  ? Icon(
                      Icons.stop,
                      size: 60,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.play_arrow,
                      size: 60,
                      color: Colors.green,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
