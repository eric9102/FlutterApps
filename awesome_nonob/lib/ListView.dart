import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListViewBuilder"),),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
return null;
      })),
    );
  }
}
