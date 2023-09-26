import 'package:flutter/material.dart';
import 'package:islami/home/hadeth%20tab/Item%20hadeth%20details.dart';
import 'package:islami/home/hadeth%20tab/hadeth%20tab.dart';
import 'package:islami/theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routName = 'hadeth-details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.06,
            horizontal: MediaQuery.of(context).size.width * 0.02,
          ),
          decoration: BoxDecoration(
            color: MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    ]);
  }
}
