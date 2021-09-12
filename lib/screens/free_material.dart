import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/constants.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/widgets/adventure_container.dart';

class FreeMaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
