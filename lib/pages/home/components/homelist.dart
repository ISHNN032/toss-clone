import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/pages/home/components/listitem.dart';
import '../../../data.dart';

class HomeList extends StatefulWidget {
  _HomeList createState() => _HomeList();
}

class _HomeList extends State<HomeList> {
  List<MenuPageItem> accountItems = getMenuPageItemList(MenuItemType.ACCOUNT);
  List<MenuPageItem> cardItems = getMenuPageItemList(MenuItemType.CARD);
  List<MenuPageItem> insuranceItems =
      getMenuPageItemList(MenuItemType.INSURANCE);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListItem(accountItems, "계좌", 123123123),
        ListItem(cardItems, "카드", 12312312),
        ListItem(insuranceItems, "보험", 123123),
      ],
    );
  }
}
