import 'package:flutter/material.dart';

class MenuItem2 extends StatelessWidget {
  final String text;

  MenuItem2(this.text);

  Widget horizontalLine(Color color) => Container(
        height: 4.0,
        width: 130.0,
        color: color,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(10),
      child: Column(children: [
        horizontalLine(Colors.red),
        Text('Hello'),
        horizontalLine(Colors.blue),
      ]),
    );
  }
}
