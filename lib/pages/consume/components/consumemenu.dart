import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/pages/consume/components/infodialog.dart';

import '../../../../style.dart';

class CreditMenu extends StatefulWidget {
  _CreditMenu createState() => _CreditMenu();
}

class _CreditMenu extends State<CreditMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(26),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: colorLine),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("오늘까지 소비/수입"),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "+ 123,321,123 원",
                      style: textThemePrimary.bodyText1!
                          .merge(TextStyle(color: colorAssent)),
                    ),
                    Text(
                      "- 123,123,123 원",
                      style: textThemePrimary.bodyText1,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: styleButtonPrimary
                      .merge(ElevatedButton.styleFrom(primary: colorButton)),
                  onPressed: celendarPressed,
                  child: Text(
                    "달력보기",
                    style: TextStyle(color: colorToneDown),
                  ),
                )
              ],
            ),
            SizedBox(height: 36,),
            InfoDialog(),
          ],
        ));
  }

  void celendarPressed() {}
}