import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Language_bottom_sheet.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/Theme_bottom_sheet.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: provider.isDarkMode()
                      ? MyTheme.yellowcolor
                      : Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Text(
                      provider.appLanguage == 'en'
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: Theme.of(context).textTheme.titleMedium),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              ShowThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: provider.isDarkMode()
                      ? MyTheme.yellowcolor
                      : Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Text(
                      provider.isDarkMode()
                          ? AppLocalizations.of(context)!.dark
                          : AppLocalizations.of(context)!.light,
                      style: Theme.of(context).textTheme.titleMedium),
                  Icon(
                    Icons.arrow_drop_down,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }

  void ShowThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }
}
