import 'package:flutter/material.dart';
import 'package:islami/Quran/sura_details_screen.dart';

class ItmeSuraName extends StatelessWidget {
  String name;
  int index;

  ItmeSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(name: name, Index: index));
      },
      child: Text(name,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center),
    );
  }
}
