import 'package:flutter/material.dart';

class MyTheme{
static Color primaryLight =  const Color(0xffB7935F);
 static ThemeData lightMode = ThemeData(
  primaryColor: primaryLight,

  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent,
  centerTitle: true,
  elevation: 0),
  textTheme:const TextTheme(
   titleLarge: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,

   ),
    titleMedium:  TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400
      ,

    ),
    titleSmall:  TextStyle(
      fontSize:20,
      fontWeight: FontWeight.bold,

    ),

  ),
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     selectedItemColor: Colors.black,
     selectedLabelStyle: TextStyle(
       color: Colors.black,
       fontSize: 12,
       fontWeight: FontWeight.w400
     )
   )
 );

}