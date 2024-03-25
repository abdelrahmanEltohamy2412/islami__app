import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/quran_tab/itemsuraname.dart';
import 'package:isami_app/home_screen/quran_tab/sura-names.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isami_app/mytheme.dart';
import 'package:isami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Scaffold(
      body:
      Column(
        children: [
          Center(child: Image.asset('assets/images/quran_image.png')),
          Container(
            color: provider.isDarkMode()?
            MyTheme.yellowColor:MyTheme.primaryLight,
            width: double.infinity,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.sura_name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ))),
                Expanded(
                    child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.versus,
                  style: Theme.of(context).textTheme.titleMedium,
                ))),

              ],
            ),
          ),
          Container(
            color: provider.isDarkMode()?
            MyTheme.yellowColor:MyTheme.primaryLight,
            width: double.infinity,
            height: 2,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ItemSuraName(
                          name: SuraNames.suraNAme[index],
                          index: index,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        "${SuraNames.versesNumber[index]}",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,
                      )),

                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return  Container(
                  color:provider.isDarkMode()?
                  MyTheme.yellowColor:MyTheme.primaryLight,
                  width: double.infinity,
                  height: 1,
                );
              },
              itemCount: 114,
            ),
          )
        ],
      ),
    );
  }
}
