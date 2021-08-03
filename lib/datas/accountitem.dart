import 'package:flutter/material.dart';

class AccountItem {
  AccountItemType type;
  IconData icon;
  String title;
  int value;
  bool available;

  AccountItem(this.type, this.icon, this.title, this.value, this.available);
}

enum AccountItemType { ACCOUNT, CARD, INSURANCE, CONSUME, CONSUME_TITLE, INFO }

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
          AccountItem(
              AccountItemType.INSURANCE, Icons.add_circle, "샘플 보험1", 2345, false),
          AccountItem(
              AccountItemType.INSURANCE, Icons.add_circle, "샘플 보험2", 34555, false),
        ];
      }
    case AccountItemType.CONSUME:{
      return <AccountItem>[
        AccountItem(
            AccountItemType.CONSUME, Icons.add_circle, "샘플 내역1", 2345, true),
        AccountItem(
            AccountItemType.CONSUME, Icons.add_circle, "샘플 내역2", 34555, false),
      ];
    }
    case AccountItemType.CONSUME_TITLE:{
      return <AccountItem>[
        AccountItem(
            AccountItemType.CONSUME_TITLE, Icons.add_circle, "지름신은 당신을 사랑하십니다", 2345, false),
      ];
    }
    case AccountItemType.INFO:{
      return <AccountItem>[
        AccountItem(
            AccountItemType.INFO, Icons.add_circle, "할부", 2345, true),
        AccountItem(
            AccountItemType.INFO, Icons.add_circle, "완료된 고정 지출", 34555, true),
      ];
    }
  }
}
