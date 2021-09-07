import 'package:flutter/material.dart';

class AdventureContainer extends StatefulWidget {
  @override
  _AdventureContainerState createState() => _AdventureContainerState();
}

class _AdventureContainerState extends State<AdventureContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
        child: Image(
          width: 200,
          height: 200,
          image: AssetImage("assets/forest.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
