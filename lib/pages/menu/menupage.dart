import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class MenuPage extends StatefulWidget {
  _MenuPage createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Lottie.asset('assets/list-loading1.json')
    );
  }
}