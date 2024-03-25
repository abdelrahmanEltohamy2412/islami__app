import 'package:flutter/material.dart';


class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigation;
  final Widget body;
  const AppScaffold({super.key,
    required this.body,
    required this.title,
    this.bottomNavigation});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        bottomNavigationBar: bottomNavigation,
        body: body,
      ),
    );;
  }
}
