import 'package:flutter/material.dart';
import '../view/FirstPageState.dart';
import '../view/SecondPageState.dart';
import '../view/ThirdPageState.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> with TickerProviderStateMixin {
  int _tabIndex = 0;

  List<BottomNavigationBarItem> _navigationViews;

  var appBarTitles = ['首页', '发现', '我的'];

  PageController pageController;

  var _body;

  initData() {
    _body = new IndexedStack(
      children: <Widget>[
        new FirstPageState(),
        new SecondPageState(),
        new ThirdPageState()
      ],
      index: _tabIndex,
    );
  }

  @override
  void initState() {
    super.initState();
    _navigationViews = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[0]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.widgets),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[1]),
        backgroundColor: Colors.blue,
      ),
      new BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[2]),
        backgroundColor: Colors.blue,
      ),
    ];
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    initData();

    return new MaterialApp(
      navigatorKey: navigatorKey,
      theme: new ThemeData(primaryColor: Colors.blue, accentColor: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            appBarTitles[_tabIndex],
            style: new TextStyle(color: Colors.white),
          ),
        ),
        body: _body,
        bottomNavigationBar: new BottomNavigationBar(
          items: _navigationViews
              .map((BottomNavigationBarItem navigationView) => navigationView)
              .toList(),
          currentIndex: _tabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
        ),
      ),
    );
  }
}
