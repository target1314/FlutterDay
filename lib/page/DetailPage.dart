import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xc/info/photo.dart';

class DetailPage extends StatelessWidget {

  final Photo photo;

  DetailPage({Key key, this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title),
      ),
      body: Center(
        child: Image.network(photo.url),
      ),
    );
  }

}