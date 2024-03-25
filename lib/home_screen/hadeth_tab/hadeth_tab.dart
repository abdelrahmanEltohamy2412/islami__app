import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isami_app/home_screen/hadeth_tab/itemhadithname.dart';
import 'package:isami_app/mytheme.dart';

import '../quran_tab/itemsuraname.dart';
import '../quran_tab/sura-names.dart';

class HadithTap extends StatefulWidget {
   const HadithTap({super.key});

  @override
  State<HadithTap> createState() => _HadithTapState();
}

class _HadithTapState extends State<HadithTap> {
    List<Hadith> ahdithList = [];

  @override
  Widget build(BuildContext context) {
    if(ahdithList.isEmpty){
      loadFile();
    }

    return Scaffold(
      body:
      Column(
        children: [
          Center(child: Image.asset('assets/images/hadith_image.png')),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Center(
                child: Text(
                  'Hadith Name',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 1,
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
                  color: Theme.of(context).primaryColor,
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

