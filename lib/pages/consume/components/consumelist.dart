import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listitem.dart';
import '../../../data.dart';

class ConsumeList extends StatefulWidget {
  _ConsumeList createState() => _ConsumeList();
}

class _ConsumeList extends State<ConsumeList> {
  List<MenuPageItem> consumeItems = getMenuPageItemList(MenuItemType.CONSUME);
  List<MenuPageItem> consumeTitleItems = getMenuPageItemList(MenuItemType.CONSUME_TITLE);
  List<MenuPageItem> infoItems =
      getMenuPageItemList(MenuItemType.INFO);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListItem(consumeItems, "최근내역", "모두보기"),
        ListItem(consumeTitleItems, "0월의 소비타이틀은\n6개 입니다", "모두보기"),
        ListItem(infoItems, "할부 2/4 회차\n잊지 마세요", "자세히"),
      ],
    );
  }
}
