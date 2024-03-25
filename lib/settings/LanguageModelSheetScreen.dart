import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';

class LanguageModelSheetScreen extends StatefulWidget {
  const LanguageModelSheetScreen({super.key});

  @override
  State<LanguageModelSheetScreen> createState() => _LanguageModelSheetScreenState();
}

class _LanguageModelSheetScreenState extends State<LanguageModelSheetScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        InkWell(onTap: (){
         // change to en
          provider.changeLanguage('en');

        },
          child:provider.appLanguage =='en'?selectedItemColor(AppLocalizations.of(context)!.english):
              unselectedItemColor(AppLocalizations.of(context)!.english)
        ),
          const SizedBox(height: 15,),
          InkWell(onTap: (){
            //change to ar
                     provider.changeLanguage('ar');
          },
            child:provider.appLanguage =='ar'?selectedItemColor(AppLocalizations.of(context)!.arabic):
            unselectedItemColor(AppLocalizations.of(context)!.arabic)
          ),
        ],),
    );

  }
 Widget selectedItemColor(String text){
 return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(text,
         style: Theme.of(context).textTheme.titleSmall!.copyWith(
             color: Theme.of(context).primaryColor
         ),),
       Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,)
     ],
   );
 }
  Widget unselectedItemColor(String text){
   return Text(text,
      style: Theme.of(context).textTheme.titleSmall,);
 }


}
