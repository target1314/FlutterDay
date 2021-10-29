import 'package:flutter/material.dart';
import '../view/FirstPageState.dart';
import '../view/SecondPageState.dart';
import '../view/ThirdPageState.dart';
import '../list/GridList.dart';

class MyApp extends StatefulWidget {
  var parentContext;

  @override
  _MyHomePageState createState() => new _MyHomePageState(this.parentContext);
}

class _MyHomePageState extends State<MyApp> with TickerProviderStateMixin {
  var parentContext;

  _MyHomePageState(this.parentContext);

  int _tabIndex = 0;

  List<BottomNavigationBarItem> _navigationViews;

  var appBarTitles = ['首页', '分类', '社区', '收益', '我的'];

  PageController pageController;

  var _body;

  initData() {
    _body = new IndexedStack(
      children: <Widget>[
        new FirstPageState(),
        new SecondPageState(),
        new ThirdPageState(),
        new ThirdPageState(),
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
        icon: Image.asset(
          'assets/navigation_home.png',
          height: 22,
        ),
        activeIcon: Image.asset(
          'assets/navigation_home_selected.png',
          height: 22,
        ),

        // ignore: deprecated_member_use
        title: new Text(appBarTitles[0]),
        backgroundColor:  Color(0xffFE7C30),
      ),
      new BottomNavigationBarItem(
        icon: Image.asset(
          'assets/navigation_home.png',
          height: 22,
        ),
        activeIcon: Image.asset(
          'assets/navigation_classify_selected.png',
          height: 22,
        ),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[1]),
        backgroundColor:  Color(0xffFE7C30),
      ),
      new BottomNavigationBarItem(
        icon: Image.asset(
          'assets/navigation_society.png',
          height: 22,
        ),
        activeIcon: Image.asset(
          'assets/navigation_society_selected.png',
          height: 22,
        ),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[2]),
        backgroundColor:  Color(0xffFE7C30),
      ),
      new BottomNavigationBarItem(
        icon: Image.asset(
          'assets/navigation_earnings.png',
          height: 22,
        ),
        activeIcon: Image.asset(
          'assets/navigation_earnings_selected.png',
          height: 22,
        ),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[3]),
        backgroundColor:  Color(0xffFE7C30),
      ),
      new BottomNavigationBarItem(
        icon: Image.asset(
          'assets/navigation_my.png',
          height: 22,
        ),
        activeIcon: Image.asset(
          'assets/navigation_my_selected.png',
          height: 22,
        ),
        // ignore: deprecated_member_use
        title: new Text(appBarTitles[4]),
        backgroundColor:  Color(0xffFE7C30),
      ),
    ];
  }

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    initData();

    return new MaterialApp(
      navigatorKey: navigatorKey,
      theme: new ThemeData(primaryColor:  Color(0xffFE7C30), accentColor:  Color(0xffFE7C30)),
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
