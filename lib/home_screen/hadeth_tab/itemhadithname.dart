import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadeth_tab.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadith_detailes.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';

class ItemHadithName extends StatelessWidget {
  Hadith hadith;
   ItemHadithName({super.key,required this.hadith});




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadithDetails.routeName,
            arguments: hadith
        );
      },
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
