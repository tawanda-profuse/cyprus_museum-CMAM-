import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Address',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'Near East University\nNear East Boulevard\nZIP: 99138\nNicosia / TRNC\nMersin 10 – TURKEY'),
                ),
                Text(
                  'Phone / Email',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      '+90 392 680 20 00\nExt: 5656\ninfo@cyprusmodernart.com'),
                ),
                Text(
                  'Visiting Hours',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'Mon: 10:00 – 16:00\nTue: 10:00 – 16:00\nWed: 10:00 – 16:00\nThu: 10:00 – 16:00\nFri: 10:00 – 16:00\nSat: Closed\nSun: Closed'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
