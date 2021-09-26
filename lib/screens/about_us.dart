import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/helpers/style.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenSizeWidth = MediaQuery.of(context).size.width;

    return ResponsiveWidget.isMobileScreen(context)
        ? SafeArea(
            child: Scaffold(
                backgroundColor: fakeBlack,
                body: Column(
                  children: [
                    Text(
                      'Wandering Tavern ',
                      style: TextStyle(fontSize: 60, color: mediumOrange),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 60, 50, 60),
                      child: Placeholder(
                        fallbackHeight: 200,
                        fallbackWidth: screenSizeWidth * 0.8,
                      ),
                    ),
                  ],
                )))
        : SafeArea(
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
