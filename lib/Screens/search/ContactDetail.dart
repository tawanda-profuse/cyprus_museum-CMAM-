import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDetail extends StatefulWidget {
  _ContactDetailPageState createState() => new _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetail> {
  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.blue[200],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
            title: Text(
              'Artist - Details',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          body: SingleChildScrollView(
              child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
              builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('assets/user.png'))),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 110.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Artist Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("artist@artist.com",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("+900000000001",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                            '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."'),
                      ),
                      // TextFormField(
                      //   decoration: InputDecoration(labelText: 'First Name'),
                      // ),
                      // TextFormField(
                      //   maxLines: 3,
                      //   decoration: InputDecoration(labelText: 'Last Name'),
                      // ),
                      SizedBox(height: 20.0),
                      // Align(
                      //     alignment: Alignment.centerLeft,
                      //     child: ButtonTheme(
                      //       minWidth: 100.0,
                      //       child: RaisedButton.icon(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius:
                      //                 BorderRadius.all(Radius.circular(5.0))),
                      //         onPressed: null,
                      //         icon: Icon(Icons.image),
                      //         label: Text(
                      //           'Upload Image',
                      //           style: TextStyle(color: Colors.white),
                      //         ),
                      //         textColor: Colors.white,
                      //         splashColor: Colors.black,
                      //       ),
                      //     )),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: ButtonTheme(
                      //     minWidth: 100.0,
                      //     height: 40,
                      //     child: RaisedButton.icon(
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius:
                      //               BorderRadius.all(Radius.circular(5.0))),
                      //       label: Text(
                      //         'Save',
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //       icon: Icon(
                      //         Icons.arrow_forward,
                      //         color: Colors.white,
                      //       ),
                      //       textColor: Colors.white,
                      //       splashColor: Colors.black,
                      //       color: Colors.green[900],
                      //       onPressed: () {},
                      //     ),
                      //   ),
                      // ),
                    ],
                  )),
            ),
          ))),
    );
  }
}
