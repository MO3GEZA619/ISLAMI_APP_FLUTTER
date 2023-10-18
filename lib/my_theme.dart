import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color backcolor = Color(0xff242424);
  static Color whitecolor = Color(0xffffffff);
  static Color yellowcolor = Color(0xffFACC1D);


  static ThemeData LightMode = ThemeData(
      primaryColor: primaryLight,
      //canvasColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: backcolor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: backcolor,
        unselectedItemColor: whitecolor,
        //showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        titleSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ));

  static ThemeData DarktMode = ThemeData(
      primaryColor: primaryDark,
      //canvasColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: whitecolor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowcolor,
        unselectedItemColor: whitecolor,
        //showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:whitecolor ),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,color:whitecolor ),
        titleSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color:yellowcolor ),
      ));

}
