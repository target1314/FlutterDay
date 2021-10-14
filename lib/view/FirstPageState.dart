import 'package:flutter/material.dart';

class FirstPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstPage();
}

class FirstPage extends State<FirstPageState> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是第二个界面'),
      ),
    );
  }
}
