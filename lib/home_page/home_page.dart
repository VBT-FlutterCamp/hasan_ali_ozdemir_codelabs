import 'package:codelabs/home_page/home_funcs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeFuncs().buildAppBar(context),
      body: HomeFuncs().buildBody(),
    );
  }

  
}