import 'package:flutter/material.dart';

class ItmeHadethDetails extends StatelessWidget {
  String content;

  ItmeHadethDetails({
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
