import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = const Color(0xffB7935F);
  static Color primaryDark = const Color(0xff141A2E);
  static Color yellowColor = const Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent, centerTitle: true, elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)));
  static ThemeData darkMode = ThemeData(
      primaryColor: primaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,   color: Colors.white
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,   color: Colors.white
        ),
      ),
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          selectedItemColor:yellowColor ,
          selectedLabelStyle: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)));
}
