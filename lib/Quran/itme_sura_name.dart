import 'package:flutter/material.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/Quran/sura_details_screen.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

class ItmeSuraName extends StatelessWidget {
  String name;
  int index;

  ItmeSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(name: name, Index: index));
      },
      child: Text(name,
          style:provider.isDarkMode()?
          Theme.of(context).textTheme.titleSmall?.copyWith(color:MyTheme.whitecolor ):
          Theme.of(context).textTheme.titleSmall
          ,
          textAlign: TextAlign.center),
    );
  }
}
