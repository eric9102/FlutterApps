import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final mNavBar = PreferredSize(
    child: AppBar(
      title: Text('Container widget'),
      elevation: 0.5,
    ),
    preferredSize: Size.fromHeight(44));

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mNavBar,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('PaddingDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return PaddingDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('ConstrainedBoxDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return ConstrainedBoxDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('DecoratedBoxDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return DecoratedBoxDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('TransformDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return TransformDemo();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('TransformDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return ContainerDemo2();
                  }));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('ClipDemo'),
                onTap: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(CupertinoPageRoute(builder: (BuildContext context) {
                    return ClipDemo();
                  }));
                },
              ),
            ),
          ],
        ));
  }
}

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
      body: Padding(
        //上下左右各添加16像素补白
        padding: EdgeInsets.all(16.0),
        child: Column(
          //显式指定对齐方式为左对齐，排除对齐干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              //左边添加8像素补白
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Hello world"),
            ),
            Padding(
              //上下各添加8像素补白
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("I am Jack"),
            ),
            Padding(
              // 分别指定四个方向的补白
              padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
              child: Text("Your friend"),
            )
          ],
        ),
      ),
    );
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  const ConstrainedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
      body: ConstrainedBox(constraints: null),
    );
  }
}

class DecoratedBoxDemo extends StatelessWidget {
  const DecoratedBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
    );
  }
}

class TransformDemo extends StatelessWidget {
  const TransformDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
    );
  }
}

class ContainerDemo2 extends StatelessWidget {
  const ContainerDemo2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
    );
  }
}

class ClipDemo extends StatelessWidget {
  const ClipDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mNavBar,
    );
  }
}
