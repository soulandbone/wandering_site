import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wandering_app/helpers/style.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fakeBlack,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Articles', style: GoogleFonts.arvo(fontSize: 44, color: mediumOrange)),
              SizedBox(
                height: 75,
              ),
            ],
          ),
        ))));
  }
}
