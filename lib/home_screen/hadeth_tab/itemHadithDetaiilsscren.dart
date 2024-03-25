
import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';
import 'package:isami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../mytheme.dart';

class ItemHadithDetails extends StatelessWidget {
   ItemHadithDetails({super.key, required this.content});
 String content;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(content,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color:  provider.isDarkMode()?
        MyTheme.yellowColor:Colors.black,
      ),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,);
  }
}
