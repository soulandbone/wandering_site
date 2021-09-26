import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';

AppBar mobileTopBar(GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: mediumBrownWT,
      ),
      onPressed: () {
        key.currentState!.openDrawer();
      },
    ),
    title: Text('Wandering Tavern'),
    centerTitle: true,
    elevation: 0,
    backgroundColor: mediumGreenWT,
  );
}
