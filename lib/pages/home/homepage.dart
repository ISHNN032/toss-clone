import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/creditmenu.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  late ScrollController _scrollController;
  bool lastStatus = true;

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
      });
    }
  }

  bool get isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              bottom: PreferredSize(
                child: Container (
                  color: isShrink
                      ? Colors.grey
                      : Theme.of(context).scaffoldBackgroundColor,
                  height: 0.1,
                ),
                preferredSize: Size.fromHeight(0),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text("홈",
                  style: TextStyle(
                    color: isShrink
                        ? null
                        : Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  )),
              actions: <Widget>[
                Center(
                    child: Text(
                  "QR 체크인",
                  style: TextStyle(
                      fontFamily: "", fontSize: 18, color: Colors.grey),
                )),
                SizedBox(
                  width: 12,
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.chat),
                  iconSize: 24,
                ),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.notifications),
                    iconSize: 24),
              ],
            ),
            SliverToBoxAdapter(
              child: CreditMenu(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    height: 80.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 2),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
        onRefresh: () => Future.value(true));
  }

  void onRefresh() {}
}
