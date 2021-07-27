import 'package:flutter/material.dart';
import 'package:toss_clone/datas.dart';
import 'package:toss_clone/pages/benefit/benefitpage.dart';
import 'package:toss_clone/pages/consume/consumepage.dart';
import 'package:toss_clone/pages/home/homepage.dart';
import 'package:toss_clone/pages/menu/menupage.dart';
import 'package:toss_clone/pages/stock/stockpage.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
          fontFamily: 'SpoqaHanSansNeo',
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Color.fromRGBO(24, 23, 28, 1),
          brightness: Brightness.dark,
          accentTextTheme: TextTheme(
                  bodyText1:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400))
              .apply(bodyColor: Colors.blue),
          primaryTextTheme: TextTheme(
                  bodyText1:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  bodyText2:
                      TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  button:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          )
              .apply(bodyColor: Colors.white)),
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
      body: currentWidgetView,
      bottomNavigationBar: Container(
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 0.2), //(x,y)
              blurRadius: 1.0,
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
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 300),
        opacity: selectedItem == item ? 1.0 : 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon),
            Text(item.title,
                style: Theme.of(context).primaryTextTheme.bodyText2),
          ],
        ),
      ),
    );
  }
}
