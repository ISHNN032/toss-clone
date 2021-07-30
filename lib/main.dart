import 'package:flutter/material.dart';
import 'package:toss_clone/data.dart';
import 'package:toss_clone/pages/benefit/benefitpage.dart';
import 'package:toss_clone/pages/consume/consumepage.dart';
import 'package:toss_clone/pages/home/homepage.dart';
import 'package:toss_clone/pages/menu/menupage.dart';
import 'package:toss_clone/pages/stock/stockpage.dart';
import 'package:toss_clone/style.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '토스',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primaryColor: colorAssent,
          scaffoldBackgroundColor: colorBackGround,
          brightness: Brightness.dark),
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  MainNavigation({Key? key}) : super(key: key);

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;
  late Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
      currentWidgetView = Center(
        child: HomePage(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: currentWidgetView,
      bottomNavigationBar: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          color: colorBackGround,
          boxShadow: [
            BoxShadow(
              color: colorToneDown,
              offset: Offset(0.0, 0.1), //(x,y)
              blurRadius: 0.1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildNavigationItems(),
        ),
      ),
    );
  }

  List<Widget> buildNavigationItems() {
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switch (item.title) {
            case "홈":
              currentWidgetView = Center(
                child: HomePage(),
              );
              break;
            case "내 소비":
              currentWidgetView = Center(
                child: ConsumePage(),
              );
              break;
            case "혜택":
              currentWidgetView = Center(
                child: BenefitPage(),
              );
              break;
            case "주식":
              currentWidgetView = Center(
                child: StockPage(),
              );
              break;
            case "전체":
              currentWidgetView = Center(
                child: MenuPage(),
              );
              break;
          }
          selectedItem = item;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              item.icon,
              color: selectedItem == item
                  ? colorNavigationEnabled
                  : colorNavigationDisabled,
            ),
            Text(item.title,
                style: Theme.of(context).primaryTextTheme.button!.apply(
                    color: selectedItem == item
                        ? colorNavigationEnabled
                        : colorNavigationDisabled)),
          ],
        ),
      ),
    );
  }
}
