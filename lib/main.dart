import 'package:codelabs/consts.dart';
import 'package:codelabs/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codelabs 1',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Constant.purple400,
          elevation: Constant.appbarElevation
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

