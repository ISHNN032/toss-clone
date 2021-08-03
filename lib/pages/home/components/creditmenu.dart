import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';
import 'package:toss_clone/pages/home/innerpages/remitpage.dart';

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
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(
                Icons.account_circle_rounded,
                size: 54,
                color: colorMainIcon,
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
                    style: textThemePrimary.bodyText1,
                  ),
                  Text(
                    "신용 999점",
                    style: textThemePrimary.bodyText2!
                        .merge(TextStyle(color: colorAssent)),
                  ),
                ],
              )
            ]),
            ElevatedButton(
              style: styleButtonPrimary
                  .merge(ElevatedButton.styleFrom(primary: colorAssent)),
              onPressed: remitPressed,
              child: Text("송금"),
            )
          ],
        ));
  }

  void remitPressed() async {
    bool isLocalAuth = await LocalAuthentication().canCheckBiometrics;
    if (isLocalAuth) {
      bool authenticated = await LocalAuthentication()
          .authenticate(localizedReason: '지문 인식은 그냥 데모용입니다.');
      if (authenticated) {
        Navigator.of(context).push(_createRoute());
      }
    }
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RemitPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}