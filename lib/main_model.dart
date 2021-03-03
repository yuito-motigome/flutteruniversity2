import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String sampletext = "!!!";
  void changeSampleText(){
    sampletext = "変更完了";
    notifyListeners();
  }
}