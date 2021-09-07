import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/constants.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget? laptopScreen;
  final Widget? mobileScreen;

  const ResponsiveWidget({required this.desktopScreen, this.laptopScreen, this.mobileScreen});

  static bool isMobileScreen(BuildContext context) => MediaQuery.of(context).size.width <= kMobileBreakpoint;

  static bool isLaptopScreen(BuildContext context) =>
      (MediaQuery.of(context).size.width > kMobileBreakpoint) && (MediaQuery.of(context).size.width <= kLaptopBreakPoint);

  static bool isDesktopScreen(BuildContext context) =>
      (MediaQuery.of(context).size.width > kLaptopBreakPoint) && (MediaQuery.of(context).size.width <= kDesktopBreakPoint);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > kLaptopBreakPoint) {
        return desktopScreen;
      } else if (maxWidth > kMobileBreakpoint && maxWidth <= kLaptopBreakPoint) {
        return laptopScreen ?? desktopScreen;
      } else {
        return mobileScreen ?? desktopScreen;
      }
    });
  }
}
