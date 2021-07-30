import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data.dart';
import '../../../style.dart';
import 'consumelist.dart';

class ListItem extends StatelessWidget {
  final List<MenuPageItem> list;
  final String title;
  final String value;

  ListItem(this.list, this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: colorLine),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildColumnHeader(context, title, value),
          Column(
            children:
                List.generate(list.length, (index) => _buildRow(list[index])),
          ),
        ],
      ),
    );
  }

  Widget _buildColumnHeader(BuildContext context, String title, String value) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: textThemePrimary.bodyText1,
          ),
          Text(
            value,
            style: textThemePrimary.bodyText2,
          ),
        ]));
  }

  Widget _buildRow(MenuPageItem item) {
    String formattedValue =
        "${NumberFormat.simpleCurrency(locale: "ko_KR", decimalDigits: 0, name: "").format(item.value)} 원";

    Widget trailing = SizedBox(
      width: 12,
    );
    if (item.available) {
      switch (item.type) {
        case MenuItemType.CONSUME:
          trailing = ElevatedButton(
              onPressed: onPressed,
              style: styleButtonSub
                  .merge(ElevatedButton.styleFrom(primary: colorButton)),
              child: Text(
                "청구서 보기",
                style: textThemeSub.bodyText2!.merge(TextStyle(color: colorAssent)),
              ));
          break;
        case MenuItemType.CONSUME_TITLE:
          //none
          break;
        case MenuItemType.INFO:
          trailing = Text("302,123 원");
          break;
        case MenuItemType.ACCOUNT:
        // none
          break;
        case MenuItemType.CARD:
        // none
          break;
        case MenuItemType.INSURANCE:
        // none
          break;
      }
    }

    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "- $formattedValue",
            style: textThemeItem.bodyText1,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            item.title,
            style: textThemeItem.bodyText2,
          ),
        ],
      ),
      leading: Icon(
        item.icon,
        size: 36,
      ),
      trailing: trailing,
      onTap: onTab,
    ));
  }

  void onPressed(){

  }
  void onTab(){

  }
}
