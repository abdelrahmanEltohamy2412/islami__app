import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/home-screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home:HomeScreen(),
    );
  }
}

