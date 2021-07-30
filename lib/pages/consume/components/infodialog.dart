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
          primary: colorButton, fixedSize: Size(400, 200)),
      onPressed: dialogPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("혹시 대흥동 막걸리 파전에\n받은 123,320,000원은\n수입이 아닌가요?"),
              ElevatedButton(
                onPressed: dialogPressed,
                child: Text("수입에서 제외하기"),
              )
            ],
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.person_add_alt_1,
              size: 80,
            ),
          ),
          CloseButton(onPressed: deleteButtonPressed),
        ],
      ),
    );
  }

  void dialogPressed() {}

  void deleteButtonPressed() {}
}
