import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style.dart';

class CreditMenu extends StatefulWidget {
  _CreditMenu createState() => _CreditMenu();
}

class _CreditMenu extends State<CreditMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 106,
        padding: EdgeInsets.all(26),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: colorLine),
          ),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                Icons.account_circle_rounded,
                size: 54,
                color: colorNavigationDisabled,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "김지수",
                    style: Theme.of(context).primaryTextTheme.bodyText1,
                  ),
                  Text(
                    "신용 999점",
                    style: Theme.of(context).accentTextTheme.bodyText1,
                  ),
                ],
              )
            ]),
            ElevatedButton(
              style: primaryButtonStyle,
              onPressed: remitPressed,
              child: Text(
                "송금",
                style: primaryButtonTextStyle,
              ),
            )
          ],
        ));
  }

  void remitPressed() {}
}
