import 'package:flutter/material.dart';

final mNavBar = PreferredSize(
    child: AppBar(
      title: Text('Container widget'),
      elevation: 0.5,
    ),
    preferredSize: Size.fromHeight(44));

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: mNavBar, body: Text("abc"));
  }
}
