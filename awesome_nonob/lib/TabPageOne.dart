import 'package:flutter/cupertino.dart';
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
          // itemExtent: 60, //行高
          children: <Widget>[
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('路由'),
                trailing: Icon(Icons.more_vert),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('ListView'),
                subtitle: Text('This is a ListView'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return ListViewBuilderDemo();
                  }));
                },
              ),
            )
          ],
        ));
  }
}
