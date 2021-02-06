import 'package:cyprus_museum/HomeScreen.dart';
import 'package:cyprus_museum/Screens/gallery/gallery.dart';
import 'package:cyprus_museum/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'ContactDetail.dart';

class SearchPage extends StatefulWidget {
  // @override
  _SearchPageState createState() => new _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchable = [
    {'name': 'A. Özbudak', 'image': 'ozbudak1.jpg'},
    {'name': 'Beyhan Özdemir', 'image': 'kmsm.png'},
    {'name': 'Duygu Kafkas', 'image': 'kmsm.png'},
    {'name': 'Halil Kaymaklılı', 'image': 'kmsm.png'},
    {'name': 'İvan Semionov', 'image': 'kmsm.png'},
    {'name': 'Jamşid Jumanov', 'image': 'kmsm.png'},
    {'name': 'Nurbek Mataev', 'image': 'nurbek1.jpg'},
    {'name': 'Rakhat Saparalieva', 'image': 'kmsm.png'},
    {'name': 'Karl Schmidt', 'image': 'kmsm.png'},
    {'name': 'Lidiya Mudrat', 'image': 'kmsm.png'},
    {'name': 'Maria Mardau', 'image': 'kmsm.png'},
    {'name': 'Natalia Vornikova', 'image': 'kmsm.png'},
    {'name': 'Omar Babazhanov', 'image': 'kmsm.png'},
    {'name': 'Özay Günsel', 'image': 'kmsm.png'},
    {'name': 'Petr Mordvintsev', 'image': 'kmsm.png'},
    {'name': 'Rakhimdjan Rizamukhamedov', 'image': 'kmsm.png'},
    {'name': 'William Dreghorn', 'image': 'kmsm.png'},
    {'name': 'Yusuf Beskaya', 'image': 'kmsm.png'},
    {'name': 'Zharko Jakimovski', 'image': 'kmsm.png'},
    {'name': 'Zulkhainar Kozhamkulov', 'image': 'kmsm.png'},
  ];

  var items = [];

  @override
  void initState() {
    super.initState();
    items.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    final title = items.length.toString() + ' Artists';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.blue[300],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.verified_user, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            )
          ],
          title: Text(
            title,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    prefix: Icon(Icons.search),
                    labelText: 'Search'),
                onChanged: (value) {
                  filterContact(value.toLowerCase());
                },
              ),
            ),
            new Expanded(
                child: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                    child: new Container(
                      margin: EdgeInsets.all(9.0),
                      padding: EdgeInsets.all(6.0),
                      child: new Row(children: <Widget>[
                        new CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/${items[index]['image']}'),
                          backgroundColor: Color(0xff00695c),
                          foregroundColor: Colors.white,
                        ),
                        new Padding(padding: EdgeInsets.all(8.0)),
                        new Text(
                          '${items[index]['name']}',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ]),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactDetail()));
                    },
                  ),
                );
              },
            ))
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Gallery();
                },
              ),
            );
          },
          child: new Icon(Icons.image),
          backgroundColor: Colors.blue[200],
          foregroundColor: Colors.white,
        ),
      ),
    );
  }

  void filterContact(String searchTerm) {
    var tmpSearchList = [];

    tmpSearchList.addAll(_searchable);

    if (searchTerm.isNotEmpty) {
      List<Map<String, dynamic>> tmpList = List<Map<String, dynamic>>();
      tmpSearchList.forEach((element) {
        if (element['name'].toLowerCase().contains(searchTerm.trim())) {
          tmpList.add(element);
        }
      });

      setState(() {
        items.clear();
        items.addAll(tmpList);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(_searchable);
      });
    }
  }
}
