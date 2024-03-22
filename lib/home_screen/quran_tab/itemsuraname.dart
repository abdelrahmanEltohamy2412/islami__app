
import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';

class ItemSuraName extends StatelessWidget {
  const ItemSuraName({super.key, required this.name, required this.index});
  final  String name ;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetails.routeName,
        arguments: SuraDetailsArgs(name: name, index: index) );
      },
      child: Text(name,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,),
    );
  }
}
