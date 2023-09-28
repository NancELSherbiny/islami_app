import 'package:flutter/material.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../theme.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      content,
      style: provider.isDarkMode()
          ? Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: MyTheme.whiteColor)
          : Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
