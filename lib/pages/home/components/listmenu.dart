import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../data.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Color.fromRGBO(44, 44, 52, 1),
  minimumSize: Size(36, 34),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
);

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
      children: [
        _buildList(accountItems, "계좌", 123123123),
        _buildList(cardItems, "카드", 12312312),
        _buildList(insuranceItems, "보험", 123123),
      ],
    );
  }

  Widget _buildList(List<MenuPageItem> list, String title, int value) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.1, color: Colors.grey),
        ),
      ),
      child: Column(
        children: [
          _buildColumnHeader(title, value),
          SizedBox(
            height: 20,
          ),
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
        "${NumberFormat.simpleCurrency(locale: "ko_KR", decimalDigits: 0, name: "")
            .format(value)} 원";

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: Theme.of(context).primaryTextTheme.bodyText1,
      ),
      Text(
        formattedValue,
        style: Theme.of(context).primaryTextTheme.bodyText2,
      ),
    ]);
  }

  Widget _buildRow(MenuPageItem item) {
    String formattedValue =
        "${NumberFormat.simpleCurrency(locale: "ko_KR", decimalDigits: 0, name: "")
        .format(item.value)} 원";

    Widget trailing = SizedBox(
      width: 10,
    );
    if (item.available) {
      switch (item.type) {
        case MenuItemType.ACCOUNT:
          trailing = ElevatedButton(
            style: raisedButtonStyle,
            onPressed: onPressed,
            child: Text("송금", style: Theme.of(context).primaryTextTheme.bodyText2),
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

    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: Theme.of(context).primaryTextTheme.bodyText2,
          ),
          Text(
            formattedValue,
            style: Theme.of(context).primaryTextTheme.bodyText1,
          ),
        ],
      ),
      leading: Icon(item.icon, size: 36,),
      trailing: trailing,
      onTap: () {
        setState(() {});
      },
    );
  }

  void onPressed() {}
}
