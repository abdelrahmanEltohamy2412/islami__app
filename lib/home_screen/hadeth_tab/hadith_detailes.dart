
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadeth_tab.dart';
import 'package:isami_app/home_screen/hadeth_tab/itemHadithDetaiilsscren.dart';
import 'package:isami_app/mytheme.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';
import '../quran_tab/itemsuradetaiilsscren.dart';


class HadithDetails extends StatefulWidget {
  static const String routeName = 'hadith_details';

  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadith;


    return
      Stack(children: [
        provider.isDarkMode()? Image.asset(
          'assets/images/darkbackGround.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ):
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.09,
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .width * 0.05,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:  provider.isDarkMode()?
                MyTheme.primaryDark:Colors.white,
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemHadithDetails(content: args.content[index],);
              },
              itemCount: args.content.length,

              ),
          ),

        ),

      ]);
  }

}
