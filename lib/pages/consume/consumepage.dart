import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style.dart';
import 'components/consumemenu.dart';
import 'components/consumelist.dart';

class ConsumePage extends StatefulWidget {
  _ConsumePage createState() => _ConsumePage();
}

class _ConsumePage extends State<ConsumePage> {
  final _scrollController = ScrollController();
  double scrollOpacity = 0;

  onScroll() {
    setState(() {
      //opacity = _scrollController.offset;
      double offset = _scrollController.offset;
      if (offset < 36) {
        scrollOpacity = 0;
      } else if (offset > 36) {
        scrollOpacity = 1;
      }
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
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              backgroundColor: colorBackGround,
              flexibleSpace: Container(
                child: FlexibleSpaceBar(
                  title: Text(
                    '0월 내 소비',
                    style: textThemePrimary.bodyText1,
                  ),
                  titlePadding: EdgeInsetsDirectional.only(
                    start: 32,
                    bottom: 16,
                  ),
                ),
              ),
              bottom: PreferredSize(
                child: Opacity(
                    opacity: scrollOpacity,
                    child: Container(
                      color: colorLine,
                      height: 1,
                    )),
                preferredSize: Size.fromHeight(0),
              ),
            ),
            SliverToBoxAdapter(
              child: CreditMenu(),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                ConsumeList(),
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
