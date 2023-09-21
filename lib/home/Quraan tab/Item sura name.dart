import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/Quraan%20tab/sura%20details%20screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;
  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetailsScreen.routName,
        arguments: SuraDetailsArgs(name: name,
            index: index)
        );
      },
      child: Text(
        name,style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
