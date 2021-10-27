import 'package:flutter/material.dart';

import '../list/GridList.dart';

class FirstPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstPage();
}

class FirstPage extends State<FirstPageState> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: MyHomePage());
  }
}
