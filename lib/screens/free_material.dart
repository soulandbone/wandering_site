import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/style.dart';

class FreeMaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fakeBlack,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Free Material',
                style: TextStyle(fontSize: 36, color: Colors.amberAccent),
              ),
              SizedBox(
                height: 75,
              ),
            ],
          ),
        ))));
  }
}
