import 'package:flutter/material.dart';
import 'package:wandering_app/widgets/menu_item.dart';

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
                width: 200,
                height: 300,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: Row(
                children: [
                  MenuItem('Adventures'),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Hello this is a test',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Hello this is a test',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
