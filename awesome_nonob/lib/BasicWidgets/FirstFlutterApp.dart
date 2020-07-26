import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  Widget _buildSuggestions() {
    // ignore: missing_return
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext context, int i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: Text(wordPair.asPascalCase),
            elevation: 0.5,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
            ],
          ),
          preferredSize: Size.fromHeight(44)),
      body: _buildSuggestions(),
    );
  }
}
