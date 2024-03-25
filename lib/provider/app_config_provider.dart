
import 'package:flutter/material.dart';
class AppConfigProvider extends ChangeNotifier{
  //data
  String appLanguage = 'en';
  ThemeMode appTHeme = ThemeMode.dark;

  void changeLanguage(String newLanguage){
    if(appLanguage == newLanguage){
      return ;
    }
      appLanguage = newLanguage ;
      notifyListeners();

  }
  void changeTheme(ThemeMode newMode){
    if(appTHeme == newMode){
      return ;
    }appTHeme=newMode ;
    notifyListeners();
  }
  bool isDarkMode (){
  return  appTHeme ==ThemeMode.dark;
  }
}
