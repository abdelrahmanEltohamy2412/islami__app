import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:isami_app/home_screen/quran_tab/itemsuraname.dart';
import 'package:isami_app/home_screen/quran_tab/sura-names.dart';
import 'package:isami_app/mytheme.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset('assets/images/quran_image.png')),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                  'versus',
                  style: Theme.of(context).textTheme.titleMedium,
                ))),
                Expanded(
                    child: Center(
                        child: Text(
                  'Sura Name',
                  style: Theme.of(context).textTheme.titleMedium,
                ))),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 1,
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
                          child: Text(
                        "${SuraNames.versesNumber[index]}",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleSmall,
                      )),
                      Expanded(
                        child: ItemSuraName(
                          name: SuraNames.suraNAme[index],
                          index: index,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return  Container(
                  color: Theme.of(context).primaryColor,
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
