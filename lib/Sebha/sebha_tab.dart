import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double turns = 0;
  int numberOfTasbeh = 0;
  List<String> tasbeh = ['سُبْحَانَ اللهِ', 'الْحَمْدُ لِلَّهِ', 'لَا إِلَهَ إِلَّا اللهُ', 'اللهُ أَكْبَرُ'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Center(child: Image.asset('images/head_sebha_logo.png')),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.06,
                horizontal: MediaQuery.of(context).size.width * 0.2),
            child: InkWell(
              onTap: () {
                turns += 1 / 30;
                numberOfTasbeh++;
                if (numberOfTasbeh == 33) {
                  numberOfTasbeh = 0;
                  index = (index + 1) % 4;
                }
                setState(() {});
              },
              child: AnimatedRotation(
                  turns: turns,
                  duration: Duration(milliseconds: 250),
                  child: Image.asset('images/body_sebha_logo.png')),
            ),
          ),
        ]),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.0002,
              horizontal: MediaQuery.of(context).size.width * 0.0),
          child: Text(
            'عدد التسبيحات',
            style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.4),
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Theme.of(context).primaryColor),
          child: Text(
            '$numberOfTasbeh',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 70,vertical: 20),
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Theme.of(context).primaryColor),
          child: Text(
            '${tasbeh[index]}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        )
      ],
    );
  }
}