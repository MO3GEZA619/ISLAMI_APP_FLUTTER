import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_details_screen.dart';
import 'package:islami/Quran/sura_details_screen.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/my_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadetDetailsScreen.routeName: (context) => HadetDetailsScreen(),

      },
      theme: MyTheme.LightMode



    );
  }
}
