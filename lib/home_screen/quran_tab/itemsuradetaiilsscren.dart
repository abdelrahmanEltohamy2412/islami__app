
import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';

class ItemSuraDetails extends StatelessWidget {
  const ItemSuraDetails({super.key, required this.name, required this.index});
  final  String name ;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text('$name (${index+1})',
      style: Theme.of(context).textTheme.titleSmall,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,);
  }
}
