import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 50,horizontal: 10),
            child: Image.asset('images/radio_image.png',)),

        Text('اذاعة القرآن الكريم',style: Theme.of(context).textTheme.titleLarge,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.skip_previous,
                size: 70, color: Theme.of(context).primaryColor),
            Icon(Icons.play_arrow_sharp,
                size: 90, color: Theme.of(context).primaryColor),
            Icon(
              Icons.skip_next,
              size: 70,
              color: Theme.of(context).primaryColor,
            ),
          ],
        )
      ],
    );
  }
}