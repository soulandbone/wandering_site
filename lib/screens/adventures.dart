import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/widgets/adventure_container.dart';

class AdventuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(
      children: [
        Row(
          children: [
            AdventureContainer(),
            SizedBox(
              width: 45,
            ),
            AdventureContainer()
          ],
        )
      ],
    ))));
  }
}
