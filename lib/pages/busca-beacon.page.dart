import 'dart:async';
import 'dart:io' show Platform;
import 'dart:convert';

import 'package:cyprus_museum/ProductPage.dart';
import 'package:cyprus_museum/Screens/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:beacons_plugin/beacons_plugin.dart';

import 'package:cyprus_museum/api/BeaconService.dart';
import 'package:cyprus_museum/models/Beacon.dart';
import 'package:cyprus_museum/pages/beacon-info.page.dart';

// class BuscaBeacon extends StatefulWidget {
//   @override
//   _BuscaBeaconState createState() => _BuscaBeaconState();
// }

class BuscaBeacon extends StatelessWidget {
  final BeaconService beaconService = new BeaconService();

  final StreamController<String> beaconEventsController =
      StreamController<String>();

  Future<void> initPlatformState(BuildContext context) async {
    BeaconsPlugin.listenToBeacons(beaconEventsController);
    Stream beacons = beaconEventsController.stream;

    beacons.listen(
        (data) async {
          if (data.isNotEmpty) {
            var beaconData = jsonDecode(data);

            await getBeaconById(context, beaconData['uuid']);
          }
        },
        onDone: () {},
        onError: (error) {
          print("Error: $error");
        });

    // await BeaconsPlugin.runInBackground(true);

    if (Platform.isAndroid) {
      BeaconsPlugin.channel.setMethodCallHandler((call) async {
        if (call.method == 'scannerReady') {
          await BeaconsPlugin.startMonitoring;
        }
      });
    } else if (Platform.isIOS) {
      await BeaconsPlugin.startMonitoring;
    }
  }

  Future getBeaconById(BuildContext cntext, String id) async {
    // await BeaconsPlugin.stopMonitoring;

    Beacon founded = await beaconService.getBeaconById(id);

    beaconEventsController.close();

    Navigator.push(
        cntext,
        MaterialPageRoute(
            builder: (context) => PageInfoBeacon(beacon: founded)));
  }

  @override
  Widget build(BuildContext context) {
    initPlatformState(context);

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber[400],
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                child: FlareActor(
                  "assets/images/buscando.flr",
                  animation: "Record2",
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Align(
                  alignment: AlignmentDirectional(0, 0.3),
                  child: Text(
                    "Approach an item on display",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: FlatButton(
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 100.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
