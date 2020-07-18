import 'package:flutter/material.dart';

class TabPageOne extends StatefulWidget {
  TabPageOne({Key key}) : super(key: key);

  @override
  _TabPageOneState createState() => _TabPageOneState();
}

class _TabPageOneState extends State<TabPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          child: Text("first"),
        ));
  }
}
