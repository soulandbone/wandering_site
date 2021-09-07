import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/screens/adventures.dart';

class MenuItem2 extends StatelessWidget {
  final String text;

  MenuItem2(this.text);

  Widget horizontalLine(Color color) => Container(
        height: 8.0,
        width: 120.0,
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AdventuresPage()));
      },
      child: Container(
        height: 120,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          horizontalLine(lightCream),
          Container(
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontFamily: 'PlayFairDisplay'),
          ),
          Container(
            height: 25,
          ),
          horizontalLine(mediumOrange),
        ]),
      ),
    );
  }
}
