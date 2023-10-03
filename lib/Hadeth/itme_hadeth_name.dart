import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_details_screen.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Quran/sura_details_screen.dart';

class ItmeHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItmeHadethName({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadetDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center),
    );
  }
}
