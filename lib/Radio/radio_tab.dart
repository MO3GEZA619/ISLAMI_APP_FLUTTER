import 'package:flutter/material.dart';
import 'package:islami/Provider/app_config_provider.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: Image.asset(
              'images/radio_image.png',
            )),
        Text(
          'اذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.skip_previous,
                size: 70,
                color: provider.isDarkMode()
                    ? MyTheme.yellowcolor
                    : Theme.of(context).primaryColor),
            Icon(Icons.play_arrow_sharp,
                size: 90,
                color: provider.isDarkMode()
                    ? MyTheme.yellowcolor
                    : Theme.of(context).primaryColor),
            Icon(Icons.skip_next,
                size: 70,
                color: provider.isDarkMode()
                    ? MyTheme.yellowcolor
                    : Theme.of(context).primaryColor),
          ],
        )
      ],
    );
  }
}
