import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
      ),
    );
  }
}
