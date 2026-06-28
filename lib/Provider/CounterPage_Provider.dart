import'package:flutter/material.dart';

class CounterpageProvider with ChangeNotifier{
  int count=0;

  void increment(){
    count++;
    notifyListeners();
  }
  void decremnet(){
    if(count>0) count--;
    notifyListeners();
  }
  void reset(){
    count=0;
    notifyListeners();
  }
}