import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget{
  static const String routeName= 'splash';
  @override
  Widget build(BuildContext context) {
   return Image.asset('assets/light mode/splash.png',
       fit: BoxFit.fill
   );
  }
  
}