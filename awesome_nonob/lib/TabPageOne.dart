import 'package:flutter/material.dart';
import 'ListView.dart';

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
        body: ListView(
          scrollDirection: Axis.vertical,
          itemExtent: 60, //行高
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewBuilderDemo())),
                  child: Text(
                    "ListView",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  )),
            )
          ],
        ));
  }
}
