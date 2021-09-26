import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wandering_app/helpers/responsive.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/widgets/article_container.dart';
import 'package:wandering_app/widgets/navbar_desktop.dart';
import 'package:wandering_app/widgets/navbar_mobile.dart';

class ArticlesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> articlesScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: ResponsiveWidget.isMobileScreen(context)
            ? mobileTopBar(articlesScaffoldKey)
            : PreferredSize(
                preferredSize: Size(screenSize.width, 150),
                child: NavBar(),
              ),
        backgroundColor: fakeBlack,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(75.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text('Articles', style: TextStyle(fontSize: 44, color: mediumOrange)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ArticleContainer('How To Make Memorable Villains', 'DM\'s advice',
                            'In this Article we look at the different ways for DM\'s to make unforgettable villains'),
                      ],
                    )))));
    ;
  }
}
