import 'package:flutter/material.dart';

class SecondPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SecondPage();
}

class SecondPage extends State<SecondPageState> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是第一个界面'),
      ),
    );
  }
}
