import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wandering_app/helpers/style.dart';

class AdventureContainer extends StatefulWidget {
  final String name;
  final String shortDescription;
  final String longDescription;
  final String imageRoute;

  AdventureContainer(this.name, this.shortDescription, this.longDescription, this.imageRoute);

  @override
  _AdventureContainerState createState() => _AdventureContainerState(this.name, this.shortDescription, this.longDescription, this.imageRoute);
}

class _AdventureContainerState extends State<AdventureContainer> {
  final String name;
  final String shortDescription;
  final String longDescription;
  final String imageRoute;

  _AdventureContainerState(this.name, this.shortDescription, this.longDescription, this.imageRoute);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 400,
        child: Card(
          color: Colors.transparent,
          elevation: 15.0,
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.green, Colors.blue]), borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Column(
              children: [
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.diceD20),
                  title: Text(name),
                  subtitle: Text(shortDescription),
                ),
                Image(
                  width: 200,
                  height: 200,
                  image: AssetImage(imageRoute),
                  fit: BoxFit.cover,
                ),
                Center(child: Text(longDescription))
              ],
            ),
          ),
        ));
  }
}
