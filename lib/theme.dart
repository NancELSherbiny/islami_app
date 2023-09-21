import 'package:flutter/material.dart';

class MyTheme {

  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);


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
            titleMedium: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25
            ),
      titleSmall:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23
      ),
    )
  );




}