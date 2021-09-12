import 'package:flutter/material.dart';
import 'package:wandering_app/screens/about_us.dart';
import 'package:wandering_app/screens/adventures.dart';
import 'package:wandering_app/screens/free_material.dart';
import 'package:wandering_app/screens/social_media.dart';
import 'package:wandering_app/widgets/menu_item2.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          child: Image.asset(
            'assets/logo.png',
            width: 150,
            height: 150,
          ),
        ),
        SizedBox(
          width: 50,
        ),
        MenuItem2('Adventures', AdventuresPage()),
        SizedBox(
          width: 23,
        ),
        MenuItem2('Social Media', SocialMediaPage()),
        SizedBox(
          width: 23,
        ),
        MenuItem2('Free Material', FreeMaterialPage()),
        SizedBox(
          width: 23,
        ),
        MenuItem2('About Us', AboutUsPage()),
      ],
    );
  }
}
