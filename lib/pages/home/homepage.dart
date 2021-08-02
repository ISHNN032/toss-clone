import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/pages/home/components/homelist.dart';

import '../../style.dart';
import 'components/creditmenu.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final _scrollController = ScrollController();
  double scrollOpacity = 0;

  onScroll() {
    setState(() {
      //opacity = _scrollController.offset;
      double offset = _scrollController.offset;
      if (offset < 0) {
        offset = 0;
      } else if (offset > 100) {
        offset = 100;
      }
      scrollOpacity = offset / 100;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: CustomScrollView(
          physics: RangeMaintainingScrollPhysics(),
          controller: _scrollController,
          scrollBehavior: NoBehavior(),
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              elevation: 0,
              bottom: PreferredSize(
                child: Opacity(
                    opacity: scrollOpacity,
                    child: Container(
                      color: colorLine,
                      height: 1,
                    )),
                preferredSize: Size.fromHeight(0),
              ),
              backgroundColor: colorBackGround.withOpacity(scrollOpacity),
              title: Opacity(
                  opacity: scrollOpacity,
                  child: Text("홈",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ))),
              actions: <Widget>[
                Center(
                    child: Text("QR 체크인", style: textThemePrimary.bodyText2)),
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
                HomeList(),
                Container(
                  height: 180,
                  color: colorDarkBackGround,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 36,
                      ),
                      Text("홈 편집 · 금액 숨기기",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: colorToneDown)),
                      SizedBox(
                        height: 72,
                      )
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
        onRefresh: () => Future.value(true));
  }

  void onRefresh() {}
}

class NoBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
