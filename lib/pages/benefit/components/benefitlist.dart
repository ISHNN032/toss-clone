import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/datas/benefititem.dart';
import 'listitem.dart';

class BenefitList extends StatefulWidget {
  _BenefitList createState() => _BenefitList();
}

class _BenefitList extends State<BenefitList> {
  List<BenefitItem> benefitItems = getBenefitItems();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListItem(benefitItems, "내 포인트", "0원", ">"),
      ],
    );
  }
}
