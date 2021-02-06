import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:cyprus_museum/components/image-content.widget.dart';
import 'package:cyprus_museum/components/text-content.widget.dart';
import 'package:cyprus_museum/components/video-content.widget.dart';
import 'package:cyprus_museum/pages/agradecimento.page.dart';

import 'package:cyprus_museum/pages/busca-beacon.page.dart';
import 'package:cyprus_museum/pages/menu.page.dart';

import 'package:cyprus_museum/models/Beacon.dart';

class PageInfoBeacon extends StatelessWidget {
  final Beacon beacon;

  PageInfoBeacon({@required this.beacon});

  void _tap(int index, BuildContext context) {
    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MenuPage()),
            (r) => r.isFirst);
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => MenuPage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BuscaBeacon()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AgradecimentoPage()));
        // Navigator.pushAndRemoveUntil(context,
        //     MaterialPageRoute(builder: (context) => HomePage()), (r) => false);
        break;
      default:
    }
  }

  Widget beaconContent(String type, String content) {
    Widget widgetContent;

    if (type == "texto") {
      widgetContent = new TextContentWidget(content: content);
    }

    if (type == "video") {
      widgetContent = new VideoContentWidget(content: content);
    }

    if (type == "imagem") {
      widgetContent = new ImageContentWidget(content: content);
    }

    return widgetContent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            beacon.local,
          ),
          Expanded(
            child: Center(
                child: beaconContent(
                    this.beacon.tipoConteudo, this.beacon.conteudo)),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: SingleChildScrollView(
                  child: AutoSizeText(
                beacon.legenda,
                style: TextStyle(color: Colors.white, fontSize: 15),
                maxLines: 7,
              )),
            ),
            color: Colors.black.withOpacity(.6),
          ),
          Container(
            child: Align(
              child: BottomNavigationBar(
                onTap: (int index) {
                  _tap(index, context);
                },
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.amber[400],
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.reply,
                          color: Color.fromARGB(255, 0, 0, 0), size: 40.0),
                      // ignore: deprecated_member_use
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child:
                            Icon(Icons.search, color: Colors.white, size: 40.0),
                      ),
                      // ignore: deprecated_member_use
                      title: Text('')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.highlight_off,
                          color: Color.fromARGB(255, 0, 0, 0), size: 40.0),
                      // ignore: deprecated_member_use
                      title: Text(''))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
