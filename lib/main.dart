import 'package:flutter/material.dart';
import 'package:toss_clone/datas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        primaryColor: Color.fromRGBO(24, 23, 28, 1),
        scaffoldBackgroundColor: Color.fromRGBO(24, 23, 28, 1),
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;
  late Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
      currentWidgetView = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentWidgetView,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          color: Color.fromRGBO(24, 23, 28, 1),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("홈")],
                ),
              );
              break;
            case "내 소비":
              currentWidgetView = Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("내 소비")],
                ),
              );
              break;
            case "혜택":
              currentWidgetView = Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("혜택")],
                ),
              );
              break;
            case "주식":
              currentWidgetView = Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("주식")],
                ),
              );
              break;
            case "전체":
              currentWidgetView = Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("전체")],
                ),
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
            Icon(
                item.icon
            ),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 12,
                fontFamily: "SpoqaHanSansNeo",
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
