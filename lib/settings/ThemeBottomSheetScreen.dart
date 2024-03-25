

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isami_app/mytheme.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<AppConfigProvider>(context);
    return Container(decoration: BoxDecoration(
      color: provider.isDarkMode()?MyTheme.primaryDark:Colors.white
    ),
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        InkWell(onTap: (){
         // change to dark
          provider.changeTheme(ThemeMode.dark);

        },
          child:provider.isDarkMode()?selectedItemColor(AppLocalizations.of(context)!.dark):
              unselectedItemColor(AppLocalizations.of(context)!.dark)
        ),
          const SizedBox(height: 15,),
          InkWell(onTap: (){
            //change to ar
            provider.changeTheme(ThemeMode.light);
          },
            child:provider.isDarkMode()?unselectedItemColor(AppLocalizations.of(context)!.light):
            selectedItemColor(AppLocalizations.of(context)!.light)
          ),
        ],),
    );

  }

 Widget selectedItemColor(String text){

   var provider = Provider.of<AppConfigProvider>(context);
 return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(text,
         style: Theme.of(context).textTheme.titleSmall!.copyWith(
             color: provider.isDarkMode()?MyTheme.yellowColor:MyTheme.primaryLight
         ),),
       Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,)
     ],
   );
 }
  Widget unselectedItemColor(String text){
    var provider = Provider.of<AppConfigProvider>(context);
   return Text(text,
      style: Theme.of(context).textTheme.titleSmall);
 }


}
