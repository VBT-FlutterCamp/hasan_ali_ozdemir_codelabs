import 'package:codelabs_1/home_page/home_constants.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomeFuncs {
  final _suggestions = <WordPair>[];

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

  buildAppBar(context){
    return AppBar(
      backgroundColor: HomeConst.purple400,
      elevation: HomeConst.appbarElevation,
      title: Text(HomeConst.appbarTitle,style: HomeConst.appbarTextStyle),
    );
  }

  _buildListTile(context,WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: HomeConst.listTileTextStyle,
      ),
    );
  }
}