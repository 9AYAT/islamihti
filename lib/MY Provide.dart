import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{
  String language="en";
  void changeLanguage(String lang){
    language=lang;
    notifyListeners();
  }
}
