import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/home-screen.dart';
import 'package:isami_app/mytheme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme:MyTheme.lightMode ,

    );
  }
}

