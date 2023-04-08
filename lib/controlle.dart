import 'package:flutter/material.dart';
import 'package:flutter_app_frase_do_dia/main.dart';
import 'package:flutter_app_frase_do_dia/splash.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => SplashScreen(),
      '/home': (context) => HomeFull(),
    },
  ));
}
