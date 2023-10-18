import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_details_screen.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';


class ItmeHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItmeHadethName({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadetDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(hadeth.title,
          style: provider.isDarkMode()?
          Theme.of(context).textTheme.titleSmall?.copyWith(color:MyTheme.whitecolor ):
          Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center),
    );
  }
}
