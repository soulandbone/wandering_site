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

  Widget _makeFlatButton(
    String text,
    BuildContext context,
    String route,
  ) {
    return Container(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          child: Text(text)),
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
        body: Opacity(
          opacity: .6,
          child: Container(
              decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(image: AssetImage("assets/tavern.jpg"), fit: BoxFit.cover),
          )),
        ));
  }
}
