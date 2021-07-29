import 'dart:ui';
import 'package:flutter/material.dart';

const colorBackGround = Color.fromRGBO(24, 23, 28, 1);
const colorAssent = Color.fromRGBO(47, 132, 241, 1);
const colorTopIcon = Color.fromRGBO(98, 98, 108, 1);
const colorLine = Color.fromRGBO(44, 44, 48, 1);
const colorNavigationDisabled = Color.fromRGBO(78, 78, 90, 1);
const colorTextToneDown = Color.fromRGBO(160, 160, 168, 1);

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: colorAssent,
  minimumSize: Size(38, 34),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
);
final TextStyle primaryButtonTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

final ButtonStyle rowButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Color.fromRGBO(44, 44, 52, 1),
  minimumSize: Size(36, 32),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);
final TextStyle rowButtonTextStyle = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w500, color: colorTextToneDown);
