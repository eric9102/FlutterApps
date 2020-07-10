import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    FlutterBoost.singleton.registerPageBuilders({
      'first_page': (pageName, params, _) => FirstRouteWidget(),
      'second_page': (pageName, params, _) => SecondRouteWidget(),
    });
    FlutterBoost.onPageStart();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Boost example",
      builder: FlutterBoost.init(postPush: _onRoutePushed),
    );
  }

  void _onRoutePushed(String pageName, String uniqueId, Map params, Route route, Future _){}
}

class FirstRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('与原生push一样的页面'),
            onPressed: () {
              //dart通过原生跳转dart页面
//              FlutterBoost.singleton.openPage("first", {
//                "query": {"aaa": "eee","ccc":"ddd"}
//              }, animated: true);
              FlutterBoost.singleton.open(
                "first_page"
              );
            },
          ),
          RaisedButton(
            child: Text('Go back!'),
            onPressed: () {
              //关闭dart页面
              FlutterBoost.singleton.closeByContext(context) ;
            },
          )
        ],
      ),
    );
  }
}

class SecondRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // 关闭dart页面
            FlutterBoost.singleton.closeByContext(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

