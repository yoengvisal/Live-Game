import 'package:flutter/material.dart';
import 'package:game/screens/home_screen.dart';


import 'constants/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Streaming',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color(0xffEEB76B),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: kPrimaryColor,
        ),
        textTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500),
            headline1: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 25,
                fontWeight: FontWeight.w600),
            headline3: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w600),
            headline4: TextStyle(
                color: Color(0xff707ba1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w600),
            caption: TextStyle(
              color: Color(0xff707ba1),
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            subtitle1: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 12,
            )),
      ),
      home: HomeScreen(),
    );
  }
}