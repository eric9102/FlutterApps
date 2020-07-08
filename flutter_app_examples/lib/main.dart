import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new route"),
      ),
      body: Center(
        child: Text("This is a new route"),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

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
      ),
      body: ListView(
        itemExtent: 50,
        children: <Widget>[
          FlatButton(
            child: Text("1、ListView"),
            textColor: Colors.blue,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return NewRoute();
                  }
              )
              );
            }
          ),
          FlatButton(
              child: Text("2、路由与导航"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NewRoute();
                    }
                )
                );
              }
          ),
          FlatButton(
              child: Text("3、数据存储"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NewRoute();
                    }
                )
                );
              }
          ),
          FlatButton(
              child: Text("4、网络获取"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NewRoute();
                    }
                )
                );
              }
          ),
          FlatButton(
              child: Text("5、事件处理与通知"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return NewRoute();
                    }
                )
                );
              }
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
