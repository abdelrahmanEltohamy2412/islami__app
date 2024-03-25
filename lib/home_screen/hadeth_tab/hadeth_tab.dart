import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isami_app/home_screen/hadeth_tab/itemhadithname.dart';
import 'package:isami_app/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';


class HadithTap extends StatefulWidget {
   const HadithTap({super.key});

  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
    List<Hadith> ahdithList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    if(ahdithList.isEmpty){
      loadFile();
    }

    return Scaffold(
      body:
      Column(
        children: [
          Center(child: Image.asset('assets/images/hadith_image.png')),
          Container(
            color: provider.isDarkMode()?
            MyTheme.yellowColor:MyTheme.primaryLight,
            width: double.infinity,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Center(
                child: Text(
                  AppLocalizations.of(context)!.hadith_name,
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          Container(
            color: provider.isDarkMode()?
            MyTheme.yellowColor:MyTheme.primaryLight,
            width: double.infinity,
            height: 2,
          ),ahdithList.isEmpty?Center(
            child: CircularProgressIndicator(
              color: MyTheme.primaryLight
            ),
          ):
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ItemHadithName (hadith: ahdithList[index],);
              },
              separatorBuilder: (BuildContext context, int index) {
                return  Container(
                  color: provider.isDarkMode()?
                  MyTheme.yellowColor:MyTheme.primaryLight,
                  width: double.infinity,
                  height: 1,
                );
              },
              itemCount: ahdithList.length,
            ),
          )
        ],
      ),
    );
  }

  void loadFile()async{
    String hadithContent = await rootBundle.loadString('assets/files/ahadeth.txt');
  List<String> hadithList=   hadithContent.split('#\r\n');
  for(int i = 0 ; i<hadithList.length; i++){
    List<String> hadithLines = hadithList[i].split('\n');
    String title = hadithLines[0];
    hadithLines.removeAt(0);
    Hadith hadith = Hadith(title: title, content: hadithLines);
    ahdithList.add(hadith);
    setState(() {

    });
  }
  }
}


class Hadith {
  String title;

  List<String> content;

  Hadith({
    required this.title,
    required this.content
  });}

