import 'package:authentication_task/style/my_theme_data.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  /// store dats that change 
  ThemeMode currentThemeMode = ThemeMode.light;
  void swapThemeMode(){
    if  (currentThemeMode ==  ThemeMode.light) {
      currentThemeMode = ThemeMode.dark;
    } else {
      currentThemeMode = ThemeMode.light;
    }
    notifyListeners();
    return;
  }
}