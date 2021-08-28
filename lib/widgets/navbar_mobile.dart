import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';

AppBar mobileTopBar(GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: active,
      ),
      onPressed: () {
        key.currentState!.openDrawer();
      },
    ),
    title: Image.asset(
      'assets/logo.png',
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.amberAccent,
  );
}
