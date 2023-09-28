import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_config_provider.dart';
import 'package:islami/theme.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'الله اكبر', 'استغفر الله'];

  int index = 0;

  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Align(
            alignment: Alignment.topCenter,
            child: provider.isDarkMode()
                ? Image.asset('assets/images/head_sebha_dark.png')
                : Image.asset('assets/images/head_sebha_logo.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 65, bottom: 50),
            child: IconButton(
              onPressed: () {},
              icon: InkWell(
                onTap: () {
                  onTap();
                },
                child: Transform.rotate(
                  angle: angle,
                  child: provider.isDarkMode()
                      ? Image.asset(
                          'assets/images/body_sebha_dark.png',
                        )
                      : Image.asset(
                          'assets/images/body_sebha_logo.png',
                        ),
                ),
              ),
              iconSize: 200,
            ),
          ),
        ]),
        Text(
          AppLocalizations.of(context)!.sebha_counter,
          style:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 30),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              '$counter',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: provider.isDarkMode()
                  ? MyTheme.yellowColor
                  : Theme.of(context).primaryColor),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              tasbeh[index],
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: provider.isDarkMode()
                      ? MyTheme.blackColor
                      : MyTheme.whiteColor),
            ),
          ),
        )
      ],
    );
  }

  void onTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == tasbeh.length - 1) {
      index = 0;
    }
    angle += 45;
    setState(() {});
  }
}
