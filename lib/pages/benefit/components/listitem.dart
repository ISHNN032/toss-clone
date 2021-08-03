import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/datas/benefititem.dart';
import '../../../style.dart';

class ListItem extends StatelessWidget {
  final List<BenefitItem> list;

  ListItem(this.list);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children:
                List.generate(list.length, (index) => _buildRow(list[index]))
                  ..insert(
                      0,
                    ListTile(
                      contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "내 포인트",
                            style: TextStyle(
                                fontSize: 12,
                                color: colorToneDark,
                                fontWeight: FontWeight.w500)),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "0 원",
                            style: textThemeItem.bodyText1!.merge(TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                      leading: Icon(
                        Icons.control_point,
                        size: 36,
                      ),
                      trailing: Text(">", style: TextStyle(
                          fontSize: 20,
                          color: colorToneDown,
                          fontWeight: FontWeight.w500)),
                      onTap: onPressed,
                    )),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(BenefitItem item) {
    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.all(8),
      title: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: item.backgoundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 24, 0, 0),
                child: Text(
                  item.title,
                  style:
                      textThemeItem.bodyText1!.merge(TextStyle(fontSize: 20)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
                  child: Text(
                    item.info,
                    style: TextStyle(
                        fontSize: 14,
                        color: colorToneDark,
                        fontWeight: FontWeight.w600),
                  )),
              item.lottie,
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16)),
                  color: Color.fromRGBO(255, 255, 255, 0.04),
                ),
                child: Text(item.buttonInfo,
                    style: TextStyle(
                        fontSize: 14,
                        color: colorAssent,
                        fontWeight: FontWeight.w600)),
              )
            ],
          )),
    ));
  }

  void onPressed() {}
}
