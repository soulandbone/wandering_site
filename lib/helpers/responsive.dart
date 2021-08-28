import 'package:flutter/material.dart';

int smallScreenWidth = 852;
int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({required this.largeScreen, this.mediumScreen, this.smallScreen});

  static bool isSmallScreen(BuildContext context) => MediaQuery.of(context).size.width < smallScreenWidth;

  static bool isLargeScreen(BuildContext context) => MediaQuery.of(context).size.width > largeScreenWidth;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width <= largeScreenWidth && MediaQuery.of(context).size.width >= smallScreenWidth;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth) {
        return largeScreen;
      } else if (maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
