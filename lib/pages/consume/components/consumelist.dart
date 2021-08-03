import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../datas/consumeitem.dart';
import 'listitem.dart';

class ConsumeList extends StatefulWidget {
  _ConsumeList createState() => _ConsumeList();
}

class _ConsumeList extends State<ConsumeList> {
  List<ConsumeItem> consumeItems = getConsumeItemList(ConsumeItemType.CONSUME);
  List<ConsumeItem> consumeTitleItems = getConsumeItemList(ConsumeItemType.CONSUME_TITLE);
  List<ConsumeItem> infoItems =
  getConsumeItemList(ConsumeItemType.INFO);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListItem(consumeItems, "최근내역", "모두 보기 >"),
        ListItem(consumeTitleItems, "0월의 소비타이틀은\n6개 입니다", "모두 보기 >"),
        ListItem(infoItems, "예정된 고정 지출이\n6개 있어요", "자세히 >"),
      ],
    );
  }
}
