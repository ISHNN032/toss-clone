import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../style.dart';

class InfoDialog extends StatefulWidget {
  _InfoDialog createState() => _InfoDialog();
}

class _InfoDialog extends State<InfoDialog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorDialog,
        fixedSize: Size(400, 200),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      onPressed: dialogPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "혹시 대흥동 막걸리 파전에\n받은 123,320,000원은\n수입이 아닌가요?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 12,),
              ElevatedButton(
                onPressed: dialogPressed,
                style: ElevatedButton.styleFrom(
                  primary: colorAssent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  "수입에서 제외하기",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.rice_bowl,
              size: 80,
            ),
          ),
          CloseButton(onPressed: deleteButtonPressed, color: colorToneMid,),
        ],
      ),
    );
  }

  void dialogPressed() {}

  void deleteButtonPressed() {}
}
