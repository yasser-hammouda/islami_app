import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  // 1- Data that will affect on more than one widgets
  String appLanuage = 'en'; // must have default value. cos local take string
  ThemeMode appTheme = ThemeMode.light;

// 2- create a function that will change the data
  void changeLanguage(String newLanguage) {
    if (appLanuage == newLanguage) {
      return;
    }
    appLanuage = newLanguage;
    // after change Data you must call notifyListeners()
    // each provider has many listeners whose function is waiting for change date to take certaion action
    notifyListeners();
    //3- ask youself which screen will affect by change these data
    // in our case it will affect the whole screen
  }

// create a Function for theme mode
  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
  }
}
