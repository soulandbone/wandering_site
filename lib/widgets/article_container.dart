import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/helpers/responsive.dart';

class ArticleContainer extends StatefulWidget {
  String titleText;
  String subtitleText;
  String descriptionText;

  ArticleContainer(this.titleText, this.subtitleText, this.descriptionText);

  @override
  _ArticleContainerState createState() => _ArticleContainerState(titleText, subtitleText, descriptionText);
}

Widget _makeTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: GoogleFonts.abhayaLibre(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
  );
}

Widget _makeSubTitle(String text) {
  return Text(text, textAlign: TextAlign.start, style: GoogleFonts.abhayaLibre(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic));
}

Widget _makeDescription(String text) {
  return Text(
    text,
    style: GoogleFonts.montserratAlternates(color: mediumBrownWT, fontSize: 14),
  );
}

class _ArticleContainerState extends State<ArticleContainer> {
  String titleText;
  String subtitleText;
  String descriptionText;

  _ArticleContainerState(this.titleText, this.subtitleText, this.descriptionText);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: ResponsiveWidget.isMobileScreen(context) ? 250 : 175,
      width: screenWidth * 0.7,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        color: fakeBlackDeep,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      child: Text('Hello'),
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    _makeTitle(titleText),
                    SizedBox(
                      height: 8,
                    ),
                    _makeSubTitle(subtitleText),
                    SizedBox(
                      height: 8,
                    ),
                    _makeDescription(descriptionText)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
