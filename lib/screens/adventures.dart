import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/widgets/adventure_container.dart';

class AdventuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GestureDetector(onTap: () {}, child: Container(child: AdventureContainer()));
          }),
    ));
  }
}
