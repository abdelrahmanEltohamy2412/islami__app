import 'package:flutter/material.dart';
import 'package:isami_app/home_screen/hadeth_tab/hadeth_tab.dart';
import 'package:isami_app/home_screen/quran_tab/quran_tab.dart';
import 'package:isami_app/home_screen/radio_tab/radio_tab.dart';
import 'package:isami_app/home_screen/sebha_tab/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isami_app/provider/app_config_provider.dart';
import 'package:isami_app/settings/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routName = 'home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
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
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              currentIndex: selectedIndex,
              items:  [
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                 BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/hadeth.png')),
                    label: AppLocalizations.of(context)!.hadith,),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),

                 BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),


              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs =  [
    const QuranTap(),
    sebhaTap(),
    const HadithTap(),
    const RadioTab(),
    const SettingsScreen()
  ];
}
