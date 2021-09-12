import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/widgets/drawer.dart';
import 'package:wandering_app/widgets/navbar_desktop.dart';
import 'package:wandering_app/widgets/navbar_mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final List images = ["assets/placid-lake.jpg", "assets/forest-min.jpg", "assets/fey-min.jpg"];

  // Widget _makeFlatButton(
  //   String text,
  //   BuildContext context,
  //   String route,
  // ) {
  //   return Container(
  //     child: TextButton(
  //         onPressed: () {
  //           Navigator.pushNamed(context, route);
  //         },
  //         child: Text(text)),
  //   );
  // }

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
      body: Opacity(
        opacity: 1,
        child: Container(
            child: Positioned(
              top: 400,
              child: Center(
                child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    final assetImage = images[index];

                    return buildImage(assetImage, index);
                  },
                  options: CarouselOptions(height: 250, autoPlay: true, autoPlayInterval: Duration(seconds: 6), enlargeCenterPage: true, viewportFraction: 1),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: AssetImage("assets/tavern.jpg"), fit: BoxFit.cover),
            )),
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
