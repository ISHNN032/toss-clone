import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../data.dart';
import '../../../style.dart';

final TextStyle itemTitleStyle = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w500, color: colorTextToneDown);
final TextStyle itemValueStyle =
    TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Colors.white);

class ListMenu extends StatefulWidget {
  _ListMenu createState() => _ListMenu();
}

class _ListMenu extends State<ListMenu> {
  List<MenuPageItem> accountItems = getMenuPageItemList(MenuItemType.ACCOUNT);
  List<MenuPageItem> cardItems = getMenuPageItemList(MenuItemType.CARD);
  List<MenuPageItem> insuranceItems =
      getMenuPageItemList(MenuItemType.INSURANCE);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildList(accountItems, "계좌", 123123123),
        _buildList(cardItems, "카드", 12312312),
        _buildList(insuranceItems, "보험", 123123),
      ],
    );
  }

  Widget _buildList(List<MenuPageItem> list, String title, int value) {
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
          _buildColumnHeader(title, value),
          Column(
            children:
                List.generate(list.length, (index) => _buildRow(list[index])),
          ),
        ],
      ),
    );
  }

  Widget _buildColumnHeader(String title, int value) {
    String formattedValue =
        "${NumberFormat.simpleCurrency(locale: "ko_KR", decimalDigits: 0, name: "").format(value)} 원 >";

    return Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 24),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
          Text(
            formattedValue,
            style: Theme.of(context).primaryTextTheme.bodyText2,
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
        case MenuItemType.ACCOUNT:
          trailing = ElevatedButton(
            style: rowButtonStyle,
            onPressed: onPressed,
            child: Text("송금", style: rowButtonTextStyle),
          );
          break;
        case MenuItemType.CARD:
          trailing = Text("실적달성");
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
            item.title,
            style: itemTitleStyle,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            formattedValue,
            style: itemValueStyle,
          ),
        ],
      ),
      leading: Icon(
        item.icon,
        size: 36,
      ),
      trailing: trailing,
      onTap: () {
        setState(() {});
      },
    ));
  }

  void onPressed() {}
}
