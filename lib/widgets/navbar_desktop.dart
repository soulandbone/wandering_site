import 'package:flutter/material.dart';
import 'package:wandering_app/widgets/menu_item.dart';
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
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
              width: 70,
            ),
            Expanded(
              child: Row(
                children: [
                  MenuItem2('Adventures'),
                  SizedBox(
                    width: 25,
                  ),
                  MenuItem2('Social Media'),
                  SizedBox(
                    width: 25,
                  ),
                  MenuItem2('Free Material'),
                  SizedBox(
                    width: 25,
                  ),
                  MenuItem2('About Us'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
