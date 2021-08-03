import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toss_clone/style.dart';

class RemitPage extends StatelessWidget {
  const RemitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorBackGround,
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("제작안된 페이지"),
            Lottie.asset('assets/money.json'),
          ]),
        ));
  }
}
