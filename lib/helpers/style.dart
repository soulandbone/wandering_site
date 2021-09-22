import 'package:flutter/material.dart';

Color active = Color(0xFFED9B59);
Color disable = Color(0xFF7D8790);
Color lightCream = Color(0xFFECD89D);
Color mediumCream = Color(0xFFe9b67f);
Color greyWT = Color(0XFFC2C2A6);
Color darkGreenWT = Color(0XFF658b80);
Color mediumGreenWT = Color(0XFF719382);
Color lightGreenWT = Color(0XFFafbc90);
Color lightOrange = Color(0xFFdd9871);
Color mediumOrange = Color(0xFFcd7162);
Color darkBrownWT = Color(0xFF4e5a69);
Color mediumBrownWT = Color(0xFF9d6459);
Color lightBrownWT = Color(0xFFbe7566);
Color fakeBlack = Color(0xFF2b2b2e);
Color fakeBlackDeep = Color(0xFF1e1e20);

Widget titleText(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 44,
      color: lightCream,
    ),
  );
}

Widget subTitleText(String text) {
  return Text(text,
      style: TextStyle(
        fontSize: 36,
        color: mediumCream,
      ));
}

Widget deskTopMenuText(String text) {
  return Text(
    text,
    style: TextStyle(color: greyWT, fontFamily: 'PlayFairDisplay'),
  );
}
