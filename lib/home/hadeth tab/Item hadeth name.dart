import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';
import '../../theme.dart';
import 'hadeth details screen.dart';
import 'hadeth tab.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          HadethDetailsScreen.routName,
          arguments: hadeth,
        );
      },
      child: Text(
        hadeth.title,
        style: provider.isDarkMode()
            ? Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.whiteColor)
            : Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
