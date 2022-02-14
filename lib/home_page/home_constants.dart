import 'package:flutter/material.dart';

class HomeConst {
  static Color purple400 = Color.fromARGB(255, 194, 24, 250); 

  static double appbarElevation = 5;
  static String appbarTitle = "Startup Name Generator";
  static TextStyle appbarTextStyle = const TextStyle(
    color: Color.fromARGB(255, 255, 217, 0),
    fontSize: 20,
    fontWeight: FontWeight.w600
  );

  static BoxDecoration listTileDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: const [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
  );

  static TextStyle listTileTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 24
  );
  
}