import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../datas/menuitem.dart';
import '../../../style.dart';

class ListItem extends StatelessWidget {
  final List<MenuItem> list;
  final String title;

  ListItem(this.list, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildColumnHeader(context, title),
          Column(
            children:
                List.generate(list.length, (index) => _buildRow(list[index])),
          ),
        ],
      ),
    );
  }

  Widget _buildColumnHeader(BuildContext context, String title) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            title,
            style: textThemePrimary.bodyText1,
          ),
        ]));
  }

  Widget _buildRow(MenuItem item) {
    Widget trailing = SizedBox(
      width: 12,
    );
    switch (item.tag) {
      case MenuTag.NEW:
        trailing = Text("새로 나온");
        break;
      case MenuTag.EVENT:
        trailing = Text("이벤트");
        break;
      case MenuTag.UPDATE:
        trailing = Text("업데이트");
        break;
      case MenuTag.NONE:
        // TODO: Handle this case.
        break;
    }

    return Container(
        child: ListTile(
      //contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: textThemeItem.bodyText1,
          ),
        ],
      ),
      leading: Icon(
        item.icon,
        size: 24,
      ),
      trailing: trailing,
      onTap: onTab,
    ));
  }

  void onPressed() {}

  void onTab() {}
}
