import 'package:flutter/material.dart';
import 'package:islami/Hadeth/hadeth_tab.dart';
import 'package:islami/Quran/quran_tab.dart';
import 'package:islami/Radio/radio_tab.dart';
import 'package:islami/Sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName='HS';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/default_bg.png',
            fit: BoxFit.fitWidth,width: double.infinity),
        Scaffold(
          appBar: AppBar(
            title: Text('Islami',
            style: Theme.of(context).textTheme.titleLarge,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (index){
                selectedindex =index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('images/icon_quran.png') ),
                  label: 'Quran'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('images/icon_hadeth.png') ),
                    label: 'Hadeth'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('images/icon_sebha.png') ),
                    label: 'Sebha'
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage('images/icon_radio.png') ),
                    label: 'Radio'
                ),
              ],
            ),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }
  List<Widget> tabs =[
    QuranTab(),HadethTap(),SebhaTap(),RadioTap()
  ];
}

