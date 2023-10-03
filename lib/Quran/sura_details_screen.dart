import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Quran/itme_sura_details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SDS';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (Verses.isEmpty) {
      loadFie(args.Index);
    }

    return Stack(children: [
      Image.asset('images/default_bg.png',
          fit: BoxFit.fitWidth, width: double.infinity),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * 0.04,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 3,
                    );
                  },
                  itemBuilder: ((context, index) {
                    return ItmeSuraDetails(
                      content: Verses[index],
                      index: index,
                    );
                  }),
                  itemCount: Verses.length,
                ),
              ),
      )
    ]);
  }

  Future<void> loadFie(int index) async {
    String content = await rootBundle.loadString('assets/${index + 1}.txt');
    List<String> lines = content.split('\n');
    Verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int Index;

  SuraDetailsArgs({required this.name, required this.Index});
}
