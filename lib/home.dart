import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/widgets/drawer.dart';
import 'package:wandering_app/widgets/navbar_desktop.dart';
import 'package:wandering_app/widgets/navbar_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final List images = ["assets/placid-lake.jpg", "assets/forest-min.jpg", "assets/fey-min.jpg"];

  Widget _makeBottomPage(
    BuildContext context,
  ) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 65,
      width: (screenWidth * 0.6),
      child: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Colors.blue]), borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.instagram),
                    title: Text('Instagram'),
                    onTap: () {
                      _launchURL('https//www.instagram.com/wandering_tavern');
                    },
                  ),
                ),
                Expanded(
                  child: ListTile(leading: FaIcon(FontAwesomeIcons.tiktok), title: Text('TikTok')),
                )
              ],
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              child: Center(child: Text('Copyright 2021 Wandering Tavern')),
            )
          ],
        ),
      ),
    );
  }

  Widget _makeBottomPage2(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                child: FittedBox(
                  child: FaIcon(FontAwesomeIcons.instagram),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                child: FittedBox(
                  child: FaIcon(FontAwesomeIcons.tiktok),
                ),
              ),
            ],
          ),
          Container(
            child: Text('Copyright © 2021 Wandering Tavern'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      appBar: ResponsiveWidget.isMobileScreen(context)
          ? mobileTopBar(scaffoldKey)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 150),
              child: NavBar(),
            ),
      drawer: MobileMenu(),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        // child: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     maxHeight: MediaQuery.of(context).size.height,
        //   ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: AssetImage("assets/tavern.jpg"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140.0),
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    final assetImage = images[index];

                    return buildImage(assetImage, index);
                  },
                  options: CarouselOptions(height: 250, autoPlay: true, autoPlayInterval: Duration(seconds: 6), enlargeCenterPage: true, viewportFraction: 1),
                ),
              ),
              SizedBox(height: 550),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: _makeBottomPage2(
                        context,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String assetImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.black,
      width: double.infinity,
      child: Image.asset(
        assetImage,
        fit: BoxFit.cover,
      ));
}
