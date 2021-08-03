import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_clone/pages/benefit/components/benefitlist.dart';
import 'package:toss_clone/pages/home/components/homelist.dart';
import 'package:toss_clone/pages/menu/menulist.dart';
import '../../style.dart';

class MenuPage extends StatefulWidget {
  _MenuPage createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  final _scrollController = ScrollController();
  double scrollOpacity = 0;
  bool isScrolled = false;

  onScroll() {
    setState(() {
      //opacity = _scrollController.offset;
      double offset = _scrollController.offset;
      if (offset < 0) {
        offset = 0;
      } else if (offset > 100) {
        offset = 100;
        isScrolled = true;
      } else {
        isScrolled = false;
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
                  child: Text("전체",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ))),
              actions: <Widget>[
                Opacity(
                  opacity: isScrolled ? 1 : 0,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.headset_mic),
                    iconSize: 24,
                    disabledColor: colorTopIcon,
                  ),
                ),
                Opacity(
                  opacity: isScrolled ? 1 : 0,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.settings),
                    iconSize: 24,
                    disabledColor: colorTopIcon,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.only(left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "전체",
                        style: textThemePrimary.bodyText1!
                            .merge(TextStyle(fontSize: 24)),
                      ),
                      Text(
                        "고객센터    설정    ",
                        style: textThemePrimary.bodyText2!
                            .merge(TextStyle(fontSize: 16)),
                      ),
                    ],
                  )),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
                  [
                    MenuList(),
                    Container(
                      height: 80,
                      color: colorBackGround,
                      alignment: Alignment.center,
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
