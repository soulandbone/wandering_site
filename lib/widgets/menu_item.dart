import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String text;

  MenuItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      child: Column(
        children: [
          Container(
            child: SizedBox(
              height: 10.0,
              child: Center(
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 5.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text(text)),
        ],
      ),
    );
  }
}
