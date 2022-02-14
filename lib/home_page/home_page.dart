import 'package:codelabs/home_page/home_funcs.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'home_constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _suggestions = <WordPair>[];

  final _saved = <WordPair>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeFuncs().buildAppBar(context,_pushSaved),
      body: buildBody(),
    );
  }

    buildBody(){
    _suggestions.addAll(generateWordPairs().take(10));
    return ListView.builder(
      itemBuilder: (context,i){

        if (i.isOdd) {
        return const SizedBox();
      }

        final index = i ~/ 2;

        if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }

        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: HomeConst.listTileDecoration,
            padding: const EdgeInsets.all(8),
            child: _buildListTile(context, _suggestions[index])
          ),
          );
      },
    );
  }

    _buildListTile(context,WordPair pair){
    final _alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: HomeConst.listTileTextStyle,
      ),
      trailing: Icon(     // NEW from here...
      _alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: _alreadySaved ? Colors.red : null,
      semanticLabel: _alreadySaved ? 'Remove from saved' : 'Save' ),
      onTap: (){
        setState(() {
          if (_alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      // Add lines from here...
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: HomeConst.listTileTextStyle,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  context: context,
                  tiles: tiles,
                ).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ), // ...to here.
    );
  }
}