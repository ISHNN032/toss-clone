import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/datas/menuitem.dart';

import 'listitem.dart';

class MenuList extends StatefulWidget {
  _MenuList createState() => _MenuList();
}

class _MenuList extends State<MenuList> {
  List<MenuItem> latelyItems = getMenuItemList(MenuItemHeader.LATELY);
  List<MenuItem> newlyItems = getMenuItemList(MenuItemHeader.NEWLY);
  List<MenuItem> studentItems = getMenuItemList(MenuItemHeader.STUDENT);
  List<MenuItem> loanItems = getMenuItemList(MenuItemHeader.LOAN);
  List<MenuItem> insuranceItems = getMenuItemList(MenuItemHeader.INSURANCE);
  List<MenuItem> remitItems = getMenuItemList(MenuItemHeader.REMIT);
  List<MenuItem> accountItems = getMenuItemList(MenuItemHeader.ACCOUNT);
  List<MenuItem> creditItems = getMenuItemList(MenuItemHeader.CREDIT);
  List<MenuItem> cardItems = getMenuItemList(MenuItemHeader.CARD);
  List<MenuItem> carItems = getMenuItemList(MenuItemHeader.CAR);
  List<MenuItem> estateItems = getMenuItemList(MenuItemHeader.ESTATE);
  List<MenuItem> benefitItems = getMenuItemList(MenuItemHeader.BENEFIT);
  List<MenuItem> lifeItems = getMenuItemList(MenuItemHeader.LIFE);
  List<MenuItem> bossItems = getMenuItemList(MenuItemHeader.BOSS);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListItem(latelyItems, "최근"),
        ListItem(newlyItems, "신규"),
        ListItem(studentItems, "학생"),
        ListItem(loanItems, "대출"),
        ListItem(insuranceItems, "보험"),
        ListItem(remitItems, "송금"),
        ListItem(accountItems, "계좌"),
        ListItem(creditItems, "신용"),
        ListItem(cardItems, "카드"),
        ListItem(carItems, "자동차"),
        ListItem(estateItems, "부동산"),
        ListItem(benefitItems, "혜택"),
        ListItem(lifeItems, "생활"),
        ListItem(bossItems, "사장님"),
      ],
    );
  }
}
