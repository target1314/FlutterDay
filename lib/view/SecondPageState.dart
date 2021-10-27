import 'package:flutter/material.dart';
import '../list/GridList.dart';

class SecondPageState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SecondPage();
}

class SecondPage extends State<SecondPageState> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: MyHomePage(),
    );
  }
}
