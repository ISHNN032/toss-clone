import 'package:flutter/material.dart';

class AccountItem {
  AccountItemType type;
  IconData icon;
  String title;
  int value;
  bool available;

  AccountItem(this.type, this.icon, this.title, this.value, this.available);
}

enum AccountItemType { ACCOUNT, CARD, INSURANCE }

List<AccountItem> getAccountItemList(AccountItemType type) {
  switch (type) {
    case AccountItemType.ACCOUNT:
      {
        return <AccountItem>[
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장1", 123123, true),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장2", 12342, true),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장3", 2352321, true),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장4", 21352315, false),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장5", 1235213, false),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장6", 12352, false),
          AccountItem(AccountItemType.ACCOUNT,
              Icons.arrow_drop_down_circle_rounded, "샘플 통장7", 1234, false),
        ];
      }
    case AccountItemType.CARD:
      {
        return <AccountItem>[
          AccountItem(
              AccountItemType.CARD, Icons.credit_card, "샘플 카드1", 1234, false),
          AccountItem(
              AccountItemType.CARD, Icons.credit_card, "샘플 카드2", 1235, false),
          AccountItem(
              AccountItemType.CARD, Icons.credit_card, "샘플 카드3", 21343, true),
        ];
      }
    case AccountItemType.INSURANCE:
      {
        return <AccountItem>[
          AccountItem(AccountItemType.INSURANCE, Icons.add_circle, "샘플 보험1",
              2345, false),
          AccountItem(AccountItemType.INSURANCE, Icons.add_circle, "샘플 보험2",
              34555, false),
        ];
      }
  }
}
