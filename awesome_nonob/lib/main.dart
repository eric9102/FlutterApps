import 'package:awesome_nonob/TabPageFour.dart';
import 'package:awesome_nonob/TabPageOne.dart';
import 'package:awesome_nonob/TabPageThree.dart';
import 'package:awesome_nonob/TabPageTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
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
    if (Platform.isAndroid) {
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
    } else {
      return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text("基础-iOS")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.battery_charging), title: Text("进阶")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.time), title: Text("三方")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), title: Text("整合"))
        ]),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return TabPageOne();
                  break;
                case 1:
                  return TabPageTwo();
                  break;
                case 2:
                  return TabPageThree();
                  break;
                case 3:
                  return TabPageFour();
                  break;
                default:
                  return Container();
              }
            },
          );
        },
      );
    }
  }
}
