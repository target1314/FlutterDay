import 'package:flutter/material.dart';

class ThirdPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ThirdPage();
}

class ThirdPage extends State<ThirdPageState> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是第三个界面'),
      ),
    );
  }
}
