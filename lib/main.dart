import 'package:flutter/material.dart';
import 'package:islami/home/Quraan%20tab/sura%20details%20screen.dart';
import 'package:islami/home/home%20page.dart';
import 'package:islami/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName ,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routName:(context) => SuraDetailsScreen(),
      },
      theme: MyTheme.lightMode,

    );
  }
}
