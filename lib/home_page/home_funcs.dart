import 'package:codelabs/home_page/home_constants.dart';
import 'package:codelabs/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomeFuncs {
  

  

  buildAppBar(context,_pushSaved){
    return AppBar(
      backgroundColor: HomeConst.purple400,
      elevation: HomeConst.appbarElevation,
      title: Text(HomeConst.appbarTitle,style: HomeConst.appbarTextStyle),
      actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: _pushSaved,
            tooltip: 'Saved Suggestions',
          ),
        ],
    );
  }


}