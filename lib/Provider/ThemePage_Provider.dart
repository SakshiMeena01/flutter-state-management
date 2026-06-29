import 'package:flutter/material.dart';

class ThemepageProvider with ChangeNotifier{
  String selectedTheme='System Mode';

  void changeTheme(String theme){
    selectedTheme=theme;
    notifyListeners();
  }

  ThemeMode get thememode{
    if(selectedTheme=='Light Mode') return ThemeMode.light;
    if(selectedTheme=='Dark Mode')return ThemeMode.dark;
    return ThemeMode.system;
  }
}