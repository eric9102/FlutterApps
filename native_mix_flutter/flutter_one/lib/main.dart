import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());
const platform = MethodChannel('com.example.flutterOne');

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
            }),
//        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', showBack: true),
      //路由表
      routes:{
        "flutter_page_two":(context)=>FlutterPageTwo(showBack: true)
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.showBack=false}) : super(key: key);

  final String title;
  bool showBack;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: !widget.showBack?null : IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:() => platform.invokeMethod('closeFlutterPage')),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NewRoute();
                    },
                    fullscreenDialog: false
                )
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new route"),
      ),
      body: Center(
        child:RaisedButton(
            child: Text("Go Native Page"),
            onPressed: ()=>platform.invokeMethod('openNativePage')
        ),
      ),
    );
  }
}

class FlutterPageTwo extends StatelessWidget{
  bool showBack;
  FlutterPageTwo({Key key, this.showBack=false }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text("FlutterPageTwo"),
        leading: !showBack?null:IconButton(icon:Icon(Icons.arrow_back), onPressed:() => platform.invokeMethod('closeFlutterPage')
        )),
      body: Center(
        child: Text("FlutterPageTwo"),
      ),
      );

  }
}