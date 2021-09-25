import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wandering_app/helpers/constants.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/widgets/card_container.dart';

class AdventuresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO if the screen is small, make it so adventure container is only one per row
    return Scaffold(
        backgroundColor: fakeBlack,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(75.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text('Adventures', style: GoogleFonts.arvo(fontSize: 44, color: mediumOrange)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          runSpacing: 40,
                          spacing: 40,
                          children: [
                            CardContainer(adv1Title, adv1Description),
                            CardContainer(adv2Title, adv2Description),
                            CardContainer(adv3Title, adv3Description),
                            CardContainer(adv4Title, adv4Description),
                            CardContainer(adv5Title, adv5Description),
                            CardContainer(adv6Title, adv6Description),
                            CardContainer(adv7Title, adv7Description),
                          ],
                        )
                      ],
                    )))));
  }
}
