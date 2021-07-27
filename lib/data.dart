import 'package:flutter/material.dart';

class MenuPageItem {
  MenuItemType type;
  IconData icon;
  String title;
  int value;
  bool available;

  MenuPageItem(this.type, this.icon, this.title, this.value, this.available);
}

enum MenuItemType { ACCOUNT, CARD, INSURANCE }

List<MenuPageItem> getMenuPageItemList(MenuItemType type) {
  switch (type) {
    case MenuItemType.ACCOUNT:
      {
        return <MenuPageItem>[
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장1", 123123, true),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장2", 12342, true),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장3", 2352321, true),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장4", 21352315, false),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장5", 1235213, false),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장6", 12352, false),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장7", 1234, false),
          MenuPageItem(MenuItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장8", 1235213, false),
        ];
      }
    case MenuItemType.CARD:
      {
        return <MenuPageItem>[
          MenuPageItem(
              MenuItemType.CARD, Icons.credit_card, "샘플 카드1", 1234, false),
          MenuPageItem(
              MenuItemType.CARD, Icons.credit_card, "샘플 카드2", 1235, false),
          MenuPageItem(
              MenuItemType.CARD, Icons.credit_card, "샘플 카드3", 21343, true),
        ];
      }
    case MenuItemType.INSURANCE:
      {
        return <MenuPageItem>[
          MenuPageItem(MenuItemType.INSURANCE, Icons.add_circle, "샘플 보험1",
              2345, false),
          MenuPageItem(MenuItemType.INSURANCE, Icons.add_circle, "샘플 보험2",
              34555, false),
        ];
      }
  }
}

class NavigationItem {
  IconData icon;
  String title;

  NavigationItem(this.title, this.icon);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("홈", Icons.home),
    NavigationItem("내 소비", Icons.calendar_today),
    NavigationItem("혜택", Icons.account_balance_wallet_rounded),
    NavigationItem("주식", Icons.waterfall_chart),
    NavigationItem("전체", Icons.menu),
  ];
}
