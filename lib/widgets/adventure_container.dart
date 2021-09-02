import 'package:flutter/material.dart';

class AdventureContainer extends StatefulWidget {
  @override
  _AdventureContainerState createState() => _AdventureContainerState();
}

class _AdventureContainerState extends State<AdventureContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 150,
      child: Column(
        children: [
          Image(image: AssetImage("assets/forest.jpg")),
          Divider(
            height: 10,
          ),
          Text('This adventure is about hungry dinosaurs')
        ],
      ),
    );
  }
}
