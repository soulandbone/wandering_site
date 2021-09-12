import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wandering_app/helpers/style.dart';
import 'package:wandering_app/screens/about_us.dart';
import 'package:wandering_app/screens/adventures.dart';
import 'package:wandering_app/screens/free_material.dart';
import 'package:wandering_app/screens/social_media.dart';

class MobileMenu extends StatelessWidget {
  Widget listTileDrawer(String text, FaIcon icon, BuildContext context, Widget route) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      leading: icon,
      title: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 125,
            ),
            listTileDrawer(
                'Adventures',
                FaIcon(
                  FontAwesomeIcons.dAndD,
                ),
                context,
                AdventuresPage()),
            SizedBox(
              height: 25,
            ),
            listTileDrawer('Social Media', FaIcon(FontAwesomeIcons.instagram), context, SocialMediaPage()),
            SizedBox(height: 25),
            listTileDrawer('Free Material', FaIcon(FontAwesomeIcons.freebsd), context, FreeMaterialPage()),
            SizedBox(height: 25),
            listTileDrawer('About Us', FaIcon(FontAwesomeIcons.users), context, AboutUsPage())
          ],
        ),
        color: active,
      ),
    );
  }
}
