import 'package:flutter/material.dart';

class AdventureContainer extends StatefulWidget {
  @override
  _AdventureContainerState createState() => _AdventureContainerState();
}

class _AdventureContainerState extends State<AdventureContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      child: Card(
          elevation: 15.0,
          child: Column(
            children: [
              ListTile(),
              Image(
                width: 200,
                height: 200,
                image: AssetImage("assets/forest.jpg"),
                fit: BoxFit.cover,
              ),
              Text('This is the intro for the adventure')
            ],
          )),
    );
  }
}
