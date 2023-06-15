// provider: ^6.0.5

import 'package:flutter/cupertino.dart';

class LogicPage extends ChangeNotifier {
  int count =0;

  void increment (){
    count++;
    notifyListeners();
  }
  void decrement (){
    count--;
    notifyListeners();
  }

}