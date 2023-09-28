import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/radio_image.png',
        ),
        Text(AppLocalizations.of(context)!.radio_quran,
            style: Theme.of(context).textTheme.titleMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_previous,
                    size: 40,
                    color: provider.isDarkMode()
                        ? MyTheme.yellowColor
                        : Theme.of(context).primaryColor)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: provider.isDarkMode()
                      ? MyTheme.yellowColor
                      : Theme.of(context).primaryColor,
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next,
                size: 40,
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
