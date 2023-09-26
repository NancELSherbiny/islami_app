import 'package:flutter/material.dart';
import 'package:islami/home/Quraan%20tab/Quraan%20tab.dart';
import 'package:islami/home/hadeth%20tab/hadeth%20tab.dart';
import 'package:islami/home/radio%20tab/radio%20tab.dart';
import 'package:islami/home/sebha%20tab/sebha%20tab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
             currentIndex: selectedIndex,
              onTap:(index){
               selectedIndex = index;
               setState(() {

               });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quraan'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                label: 'Radio')
              ],
            ),
          ) ,
          body: tabs[selectedIndex],
        )

      ],
    );
  }
  List<Widget>tabs=[
    QuraanTab(),HadethTab(),SebhaTab(),RadioTab()
  ];
}