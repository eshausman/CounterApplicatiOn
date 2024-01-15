import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

int count = 1;
add(){
  count++;
  notifyListeners();
}

remove(){
  count--;
  notifyListeners();
}

reset(){
  count=0;
  notifyListeners();
}

}