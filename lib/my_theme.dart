import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color backcolor = Color(0xff242424);
  static Color whitecolor = Color(0xffffffff);
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
}
