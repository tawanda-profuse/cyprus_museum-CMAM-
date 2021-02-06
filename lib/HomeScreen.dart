import 'package:carousel_slider/carousel_slider.dart';
import 'package:cyprus_museum/Screens/Video/view_screen.dart';
import 'package:cyprus_museum/Screens/audio_guide/guide.dart';
import 'package:cyprus_museum/Screens/profile/profile_screen.dart';
import 'package:cyprus_museum/pages/busca-beacon.page.dart';
import 'package:cyprus_museum/Screens/search/search.dart';
import 'package:cyprus_museum/Screens/chatbot/chatbot.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cyprus_museum/ProductPage.dart';
import 'package:cyprus_museum/models/Product.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List bannerAdSlider = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.jpg",
    "assets/banner6.jpg",
    "assets/banner7.jpg",
    "assets/banner8.jpg"
  ];

  List<Product> products = [
    Product(
        image: "assets/face.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created by: Artist Name",
        productName: "Zeka"),
    Product(
        image: "assets/kugu.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/mosque.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Valentina Mukhacheva",
        productName: "Lala Mustafa Paşa Camii"),
    Product(
        image: "assets/natalia.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/noite_estrelada.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/image_1.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/image_4.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/image_12.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/pintura.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/images/zulkhainar.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: Artist Name",
        productName: "Art Name"),
    Product(
        image: "assets/horses.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created By: İlhomjon Otaboyev",
        productName: "Bozkırların Gücü"),
    Product(
        image: "assets/arkadas.jpg",
        description:
            "Repudiandae quibusdam quis harum odit.Autem sunt sit. Neque sapiente officia laudantium voluptatem dolores itaque dolore odio. Voluptatem reprehenderit beatae eum eligendi dolorem laborum voluptate nihil vel.",
        price: "Created by: Nurbek Mataev",
        productName: "Arkadaşlar"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cyprus Museum",
          style: TextStyle(
            color: Colors.blue[400],
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(EvaIcons.menuOutline),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: Icon(EvaIcons.search),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              accountEmail: Text(
                "tmsengezi@yahoo.com",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountName: Text(
                "Tawanda",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // currentAccountPicture: ClipRRect(
              //   borderRadius: BorderRadius.circular(70),
              //   child: Image(
              //     image: AssetImage("assets/me.jpg"),
              //     width: 70,
              //     height: 70,
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Guide"),
              leading: Icon(EvaIcons.mic),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TTSPluginRecipe();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Account"),
              leading: Icon(EvaIcons.personOutline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Let's Chat"),
              leading: Icon(EvaIcons.volumeDown),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChatBotPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Scan"),
              leading: Icon(EvaIcons.pricetagsOutline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BuscaBeacon();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("Videos"),
              leading: Icon(EvaIcons.video),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ViewScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text("About Us"),
              leading: Icon(EvaIcons.infoOutline),
              onTap: () {
                showAboutDialog(
                    context: context,
                    applicationIcon: FlutterLogo(),
                    applicationName: 'Cyprus Museum',
                    applicationVersion: '1.0.0',
                    applicationLegalese: 'Developed by Tawanda Msengezi',
                    children: <Widget>[
                      Text(
                        '\nCyprus Museum of Modern Arts , considering the contemporary aesthetic and understandings of art , is a foundation located on the campus of Near East University which undertakes an important role in selection, collection, conservation and exhibition of artworks of our country and of the international platform.',
                      ),
                      Text(
                        'The collection of the Cyprus Museum of Modern Arts consists of artworks that represent the artistic and cultural values of their country in the best possible way in terms of the art history.',
                      ),
                      Text(
                        'As can be seen, the works reflect the various creative periods of their painters; It is noteworthy that the Museum is of a representative nature in all respects with its wide range of collection in terms of style, ecole and pattern.',
                      ),
                    ]);
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 16 / 5,
                  child: Image.asset(
                    "assets/kmsm.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // banner ad slider

              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              // banner ad slider

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Artifacts",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(
                              product.productName,
                            ),
                            // Text(
                            //   "${product.price}",
                            //   style: TextStyle(
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.w700,
                            //     color: Colors.blue[200],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductPage(
                                  product: product,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
