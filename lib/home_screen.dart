import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/Quran/quran_tab.dart';
import 'package:islami/Radio/radio_tab.dart';
import 'package:islami/Sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Settings_tab.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'HS';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()
            ?
        Image.asset('images/dark_bg.png',
            fit: BoxFit.fitWidth, width: double.infinity)
        :
        Image.asset('images/default_bg.png',
            fit: BoxFit.fitWidth, width: double.infinity),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index) {
                selectedindex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/icon_quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/icon_hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/icon_sebha.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings) ,
                    label: AppLocalizations.of(context)!.settings)
              ],
            ),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTap(), SebhaTap(), RadioTap(),SettingTab()
  ];
}
