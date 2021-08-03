import 'package:flutter/material.dart';

class ConsumeItem {
  ConsumeItemType type;
  IconData icon;
  String title;
  String value;
  bool available;

  ConsumeItem(this.type, this.icon, this.title, this.value, this.available);
}

enum ConsumeItemType { CONSUME, CONSUME_TITLE, INFO }

List<ConsumeItem> getConsumeItemList(ConsumeItemType type) {
  switch (type) {
    case ConsumeItemType.CONSUME:{
      return <ConsumeItem>[
        ConsumeItem(
            ConsumeItemType.CONSUME, Icons.add_circle, "샘플 내역1", "- 241,123 원", true),
        ConsumeItem(
            ConsumeItemType.CONSUME, Icons.help, "샘플 내역2", "- 34,555 원", false),
      ];
    }
    case ConsumeItemType.CONSUME_TITLE:{
      return <ConsumeItem>[
        ConsumeItem(
            ConsumeItemType.CONSUME_TITLE, Icons.credit_card, "카드대금", "\"잠시 지나가겠습니다\"", false),
      ];
    }
    case ConsumeItemType.INFO:{
      return <ConsumeItem>[
        ConsumeItem(
            ConsumeItemType.INFO, Icons.money, "", "예정된 고정 지출", true),
      ];
    }
  }
}
