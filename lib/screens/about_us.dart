import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: fakeBlack,
            body: Stack(
              children: [
                Positioned(
                    top: 100,
                    right: 60,
                    child: Text(
                      'Wandering Tavern ',
                      style: TextStyle(fontSize: 60, color: mediumOrange),
                    )),
                Positioned(
                  left: 30,
                  top: 220,
                  child: Placeholder(
                    fallbackHeight: 580,
                    fallbackWidth: 270,
                  ),
                )
              ],
            )));
  }
}
