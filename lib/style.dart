import 'dart:ui';
import 'package:flutter/material.dart';

const colorDarkBackGround = Color.fromRGBO(16, 16, 18, 1);
const colorBackGround = Color.fromRGBO(24, 23, 28, 1);
const colorAssent = Color.fromRGBO(47, 132, 241, 1);

const colorMainIcon = Color.fromRGBO(48, 48, 54, 1);
const colorTopIcon = Color.fromRGBO(98, 98, 108, 1);
const colorLine = Color.fromRGBO(44, 44, 48, 1);

const colorButton = Color.fromRGBO(44, 44, 52, 1);

const colorNavigationEnabled = Colors.white;
const colorNavigationDisabled = Color.fromRGBO(78, 78, 90, 1);

const colorToneUp = Colors.white;
const colorToneMid = Color.fromRGBO(200, 200, 212, 1);
const colorToneDown = Color.fromRGBO(160, 160, 168, 1);

final TextTheme textThemePrimary = TextTheme(
  bodyText1:
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: colorToneUp),
  bodyText2: TextStyle(
      fontSize: 17, fontWeight: FontWeight.w400, color: colorToneDown),
);

final TextTheme textThemeSub = TextTheme(
  bodyText1:
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: colorToneUp),
  bodyText2:
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: colorToneMid),
);

final TextTheme textThemeItem = TextTheme(
  bodyText1:
      TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: colorToneUp),
  bodyText2:
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: colorToneMid),
);

final TextTheme textThemeTag = TextTheme(
    bodyText1: TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w600, color: colorToneUp
));

final ButtonStyle styleButtonPrimary = ElevatedButton.styleFrom(
  padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  textStyle: textThemeSub.bodyText1,
);

final ButtonStyle styleButtonSub = ElevatedButton.styleFrom(
  minimumSize: Size(0, 32),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
  textStyle: textThemeSub.bodyText2,
);
