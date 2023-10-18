import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Hadeth/itme_hadeth_details.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

class HadetDetailsScreen extends StatefulWidget {
  static const String routeName = 'HDS';

  @override
  State<HadetDetailsScreen> createState() => _HadetDetailsScreenState();
}

class _HadetDetailsScreenState extends State<HadetDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset('images/dark_bg.png',
              fit: BoxFit.fitWidth, width: double.infinity)
          : Image.asset('images/default_bg.png',
              fit: BoxFit.fitWidth, width: double.infinity),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.05),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: provider.isDarkMode()
                  ? Theme.of(context).primaryColor
                  : MyTheme.whitecolor,
              borderRadius: BorderRadius.circular(24)),
          child: ListView.builder(
            itemBuilder: ((context, index) {
              return ItmeHadethDetails(content: args.content[index]);
            }),
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
