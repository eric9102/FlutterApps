import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BasicWidgets/ListView.dart';
import 'BasicWidgets/FirstFlutterApp.dart';
import 'BasicWidgets/LayoutWidgets.dart';

class TabPageOne extends StatefulWidget {
  TabPageOne({Key key}) : super(key: key);

  @override
  _TabPageOneState createState() => _TabPageOneState();
}

class _TabPageOneState extends State<TabPageOne> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Home'),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          // itemExtent: 60, //行高
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.add_circle),
                title: Text('编写您的第一个Flutter App'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return RandomWords();
                  }));
                },
              ),
            ),
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
                leading: Icon(Icons.cloud_circle),
                title: Text('Layout Widgets'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return LayoutDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.wallpaper),
                title: Text('Container Widgets'),
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
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.beach_access),
                title: Text('Function Widgets'),
                onTap: () {},
              ),
            ),
          ],
        ));
  }
}
