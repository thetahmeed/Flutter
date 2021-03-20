import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  int _currentNumber = 0;

  _increament() {
    _currentNumber++;
    notifyListeners();
  }
}
