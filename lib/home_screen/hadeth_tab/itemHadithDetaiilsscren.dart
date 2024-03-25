
import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';

class ItemHadithDetails extends StatelessWidget {
   ItemHadithDetails({super.key, required this.content});
 String content;
  @override
  Widget build(BuildContext context) {
    return Text(content,
      style: Theme.of(context).textTheme.titleSmall,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,);
  }
}
