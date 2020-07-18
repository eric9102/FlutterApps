import 'package:awesome_nonob/TabPageFour.dart';
import 'package:awesome_nonob/TabPageOne.dart';
import 'package:awesome_nonob/TabPageThree.dart';
import 'package:awesome_nonob/TabPageTwo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            TabPageOne(),
            TabPageTwo(),
            TabPageThree(),
            TabPageFour(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "基础",
            ),
            Tab(
              icon: Icon(Icons.rss_feed),
              text: "进阶",
            ),
            Tab(
              icon: Icon(Icons.access_time),
              text: "三方",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "整合",
            )
          ],
          unselectedLabelColor: Colors.blueGrey,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.red,
        ),
      ),
    );
  }
}
