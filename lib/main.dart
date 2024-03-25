import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadith_detailes.dart';
import 'package:isami_app/home_screen/home-screen.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';
import 'package:isami_app/mytheme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      initialRoute:  HomeScreen.routName,
      debugShowCheckedModeBanner: false,
      theme:MyTheme.lightMode ,
      routes: {
        HomeScreen.routName :(context)=>const HomeScreen(),
        SuraDetails.routeName :(context)=>  const SuraDetails(),
        HadithDetails.routeName :(context)=> const HadithDetails()


      },

    );
  }
}

