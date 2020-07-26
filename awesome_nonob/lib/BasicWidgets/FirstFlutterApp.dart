import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: Text(wordPair.asPascalCase),
            elevation: 0,
          ),
          preferredSize: Size.fromHeight(44)),
      body: Text(wordPair.asPascalCase),
    );
  }
}
