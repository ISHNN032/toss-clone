import 'package:flutter/material.dart';

class NavigationItem {

  String title;
  IconData icon;

  NavigationItem(this.title, this.icon);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem("홈", Icons.home),
    NavigationItem("내 소비", Icons.calendar_today),
    NavigationItem("혜택", Icons.account_balance_wallet_rounded),
    NavigationItem("주식", Icons.waterfall_chart),
    NavigationItem("전체", Icons.menu),
  ];
}