
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isami_app/mytheme.dart';
import 'package:isami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'LanguageModelSheetScreen.dart';
import 'ThemeBottomSheetScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return  Container(
      margin: const EdgeInsets.all(20),
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 15,),
                   Text(AppLocalizations.of(context)!.language
                     ,style:Theme.of(context).textTheme.titleLarge,
                   ),
               SizedBox(height: 15,),
               InkWell(onTap:(){
                  showLanguageBottomSheet();
               } ,
                 child: Container(padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: MyTheme.primaryLight,
                     borderRadius: BorderRadius.circular(15)
                   ),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Text( provider.appLanguage=='en'?AppLocalizations.of(context)!.english:
                      AppLocalizations.of(context)!.arabic),
                     const Icon(Icons.arrow_drop_down_outlined,size: 35,)

                   ],),
                 ),
               ),
               SizedBox(height: 20,),
               Text(AppLocalizations.of(context)!.theme
                 ,style:Theme.of(context).textTheme.titleLarge,
               ),
               SizedBox(height: 15,),
               InkWell(onTap:(){
                 showThemeBottomSheet();
               } ,
                 child: Container(padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                       color: MyTheme.primaryLight,
                       borderRadius: BorderRadius.circular(15)
                   ),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text( provider.isDarkMode()?AppLocalizations.of(context)!.dark:
                       AppLocalizations.of(context)!.light),
                       const Icon(Icons.arrow_drop_down_outlined,size: 35,)

                     ],),
                 ),
               ),





             ],
           ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context)=>const LanguageModelSheetScreen()
    );

  }

  void showThemeBottomSheet() {
    
    showModalBottomSheet(context: context, builder: (context)=>ThemeBottomSheet());
  }
}
