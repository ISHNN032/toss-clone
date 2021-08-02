import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/datas/benefititem.dart';
import '../../../style.dart';

class ListItem extends StatelessWidget {
  final List<BenefitItem> list;
  final String title;
  final String info;
  final String value;

  ListItem(this.list, this.title, this.info, this.value);

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

  Widget _buildRow(BenefitItem item) {
    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
      title: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: item.backgoundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                child: Text(
                  item.title,
                  style: textThemeItem.bodyText1,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    item.info,
                    style: textThemeItem.bodyText2,
                  )),
              item.lottie,
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16)),
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                ),
                child: Text(item.buttonInfo),
              )
            ],
          )),
    ));
  }

  void onPressed() {}
}
