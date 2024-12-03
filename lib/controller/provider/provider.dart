

import 'package:flutter/material.dart';

class ScrollControllerProvider extends ChangeNotifier{


int itemCount = 0;

bool isScrolled = false;


// void upateCount(int count){
//   itemCount = count;
//   debugPrint(itemCount.toString());
//   notifyListeners();
// }

void isScrolleUpdate(bool val){
  isScrolled = val;
  print(isScrolled);
  notifyListeners();
}

}