import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class StockPage extends StatefulWidget {
  _StockPage createState() => _StockPage();
}

class _StockPage extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Lottie.asset('assets/list-loading1.json')
    );
  }
}