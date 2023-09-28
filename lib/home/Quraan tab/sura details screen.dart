import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/Quraan%20tab/Item%20sura%20details.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/dark_bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/default_bg.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: verses.length == 0
            ? Center(child: CircularProgressIndicator())
            : Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.06,
            horizontal: MediaQuery.of(context).size.width*0.02,
          ),
          decoration: BoxDecoration(
                  color: provider.isDarkMode()
                      ? Theme.of(context).primaryColor
                      : MyTheme.whiteColor,
                  borderRadius: BorderRadius.circular(24),
                ),
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemSuraDetails(content:
              verses[index], index: index,
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
