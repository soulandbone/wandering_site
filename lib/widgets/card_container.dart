import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wandering_app/helpers/style.dart';

class CardContainer extends StatefulWidget {
  String titleText;
  String descriptionText;

  CardContainer(this.titleText, this.descriptionText);

  @override
  _CardContainerState createState() => _CardContainerState(titleText, descriptionText);
}

Widget _makeTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: GoogleFonts.abhayaLibre(
      color: Colors.white,
      fontSize: 32,
    ),
  );
}

Widget _makeDescription(String text) {
  return Text(
    text,
    style: GoogleFonts.montserratAlternates(color: mediumBrownWT, fontSize: 14),
  );
}

class _CardContainerState extends State<CardContainer> {
  String titleText;
  String descriptionText;

  _CardContainerState(this.titleText, this.descriptionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 396,
      width: 360,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        color: fakeBlackDeep,
        child: Column(
          children: [
            Placeholder(
              fallbackHeight: 160,
            ),
            Align(alignment: Alignment.centerLeft, child: _makeTitle(titleText)),
            SizedBox(
              height: 25,
            ),
            _makeDescription(descriptionText)
          ],
        ),
      ),
    );
  }
}
