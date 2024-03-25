import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadith_detailes.dart';
import 'package:isami_app/home_screen/home-screen.dart';
import 'package:isami_app/home_screen/quran_tab/sura_detailes.dart';
import 'package:isami_app/mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isami_app/provider/app_config_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=>
        AppConfigProvider(),

      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      initialRoute: HomeScreen.routName,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightMode,
      themeMode:provider.appTHeme ,
      darkTheme: MyTheme.darkMode,
      routes: {
        HomeScreen.routName: (context) => const HomeScreen(),
        SuraDetails.routeName: (context) => const SuraDetails(),
        HadithDetails.routeName: (context) => const HadithDetails()
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),

    );
  }
}
