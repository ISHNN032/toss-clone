import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditMenu extends StatefulWidget {
  _CreditMenu createState() => _CreditMenu();
}

class _CreditMenu extends State<CreditMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 84,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.1, color: Colors.grey),
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
                color: Colors.grey,
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
              onPressed: remitPressed,
              child: Text(
                "송금",
                style: Theme.of(context).primaryTextTheme.button,
              ),
            )
          ],
        ));
  }

  void remitPressed() {}
}
