import 'package:flutter/material.dart';

class MyTheme {

  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);
  static Color primaryDark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showUnselectedLabels: true,


    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
        ),
            titleMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
        titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
      ));

  static ThemeData darkMode = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: whiteColor,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: yellowColor,
        unselectedItemColor: whiteColor,
        showUnselectedLabels: true,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: whiteColor),
        titleMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: whiteColor),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 23, color: yellowColor),
      ));
}