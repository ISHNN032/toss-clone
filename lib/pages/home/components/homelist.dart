import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../datas/accountitem.dart';
import 'listitem.dart';

class HomeList extends StatefulWidget {
  _HomeList createState() => _HomeList();
}

class _HomeList extends State<HomeList> {
  List<AccountItem> accountItems = getMenuPageItemList(AccountItemType.ACCOUNT);
  List<AccountItem> cardItems = getMenuPageItemList(AccountItemType.CARD);
  List<AccountItem> insuranceItems =
      getMenuPageItemList(AccountItemType.INSURANCE);

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
