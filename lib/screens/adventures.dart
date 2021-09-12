import 'package:flutter/material.dart';
import 'package:wandering_app/helpers/constants.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/widgets/adventure_container.dart';

class AdventuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO if the screen is small, make it so adventure container is only one per row
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: ResponsiveWidget.isMobileScreen(context)
              ? Column(
                  children: [
                    AdventureContainer(adv1Name, adv1Short, adv1Long, adv1Image),
                    SizedBox(
                      height: 60,
                    ),
                    AdventureContainer(adv2Name, adv2Short, adv2Long, adv2Image)
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    titleText('Adventures'),
                    subTitleText('For everyone'),
                    SizedBox(
                      height: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AdventureContainer(adv1Name, adv1Short, adv1Long, adv1Image),
                        SizedBox(
                          width: 60,
                        ),
                        AdventureContainer(adv2Name, adv2Short, adv2Long, adv2Image)
                      ],
                    )
                  ],
                ),
        ))));
  }
}
