
import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';
import 'package:provider/provider.dart';

import '../../mytheme.dart';
import '../../provider/app_config_provider.dart';

class ItemSuraDetails extends StatelessWidget {
  const ItemSuraDetails({super.key, required this.name, required this.index});
  final  String name ;
  final int index;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text('$name (${index+1})',
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color:  provider.isDarkMode()?
        MyTheme.yellowColor:Colors.black,
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,);
  }
}
