import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier{
  bool? isEligible;
  String? elibilityMessage= "";

  void checkElibility(int age) {
  if (age >= 18) {
    isEligible = true;
    elibilityMessage = "You are eligible";
  } else {
    isEligible = false;
    elibilityMessage = "You are not eligible";
  }

  notifyListeners();
}
}