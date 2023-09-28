import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth%20tab/Item%20hadeth%20name.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowColor
              : Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: provider.isDarkMode()
              ? MyTheme.yellowColor
              : Theme.of(context).primaryColor,
          thickness: 3,
        ),
        ahadethList.isEmpty
            ? Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        )
            : Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                      color: provider.isDarkMode()
                          ? MyTheme.yellowColor
                          : Theme.of(context).primaryColor,
                      thickness: 3,
                    );
            },
            itemBuilder: (context, index) {
              return ItemHadethName(hadeth: ahadethList[index]);
            },
            itemCount: ahadethList.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    String ahadethcontent =
        await rootBundle.loadString('assets/files/ahadeth/ahadeth.txt');
    List<String> hadethlist = ahadethcontent.split('#\r\n');
    for (int i = 0; i < hadethlist.length; i++) {
      List<String> hadethlines = hadethlist[i].split('\n');
      String title = hadethlines[0];

      ///title
      hadethlines.removeAt(0);

      ///content
      Hadeth hadeth = Hadeth(title: title, content: hadethlines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

///data class
class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
