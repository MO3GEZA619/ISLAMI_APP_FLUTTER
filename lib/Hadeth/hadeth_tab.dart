import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Hadeth/itme_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';



class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {


    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    var provider =Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Center(child: Image.asset('images/hadeth_logo.png')),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowcolor
              : Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowcolor
              : Theme.of(context).primaryColor,
          thickness: 3,
        ),

        ahadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return
                      Divider(
                        color: provider.isDarkMode()
                            ? MyTheme.yellowcolor
                            : Theme.of(context).primaryColor,
                        thickness: 3,
                      );
                  },
                  itemBuilder: (context, index) {
                    return ItmeHadethName(hadeth: ahadethList[index],);
                  },
                  itemCount: ahadethList.length,
                ),
              )
      ],
    );
  }

  void loadHadethFile() async {
    String ahadethContent =
        await rootBundle.loadString('assets/files/hadith.txt');
    List<String> hadethList = ahadethContent.split('#\r\n');

    for (int i = 0; i < hadethList.length; i++) {
      List<String> HadethLines = hadethList[i].split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: HadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
