import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/pages/home/components/listmenu.dart';

import '../../style.dart';
import 'components/creditmenu.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              bottom: PreferredSize(
                child: Container(
                  color: colorLine,
                  height: 1,
                ),
                preferredSize: Size.fromHeight(0),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text("홈",
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500,
                  )),
              actions: <Widget>[
                Center(
                    child: Text(
                  "QR 체크인",
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                )),
                SizedBox(
                  width: 12,
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.chat),
                  iconSize: 24,
                  disabledColor: colorTopIcon,
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.notifications),
                  iconSize: 24,
                  disabledColor: colorTopIcon,
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: CreditMenu(),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                ListMenu(),
              ],
            )),
          ],
        ),
        onRefresh: () => Future.value(true));
  }

  void onRefresh() {}
}
