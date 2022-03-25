import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../input_page.dart';

class DataProvider with ChangeNotifier {
  int age = 20;
  int weight = 60;
  double height = 180;
  double minHeight = 120;
  double maxHeight = 220;
  Gender? selectGender;
  double? _bmi;

  void incrementAge() {
    age = age + 1;
    notifyListeners();
  }

  void decrementAge() {
    age = age - 1;
    notifyListeners();
  }

  void incrementWeight() {
    weight = weight + 1;
    notifyListeners();
  }

  void decrementWeight() {
    weight = weight - 1;
    notifyListeners();
  }

  void changeInHeight(double heightValue) {
    height = heightValue.round().toDouble();
    notifyListeners();
  }

  void checkGender(Gender inputGender) {
    selectGender = inputGender;
    notifyListeners();
  }

  String calculateBMI() {
    _bmi = weight / pow(height/ 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  //result method
  String getResult() {
    if (_bmi! >= 25) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  //description method
  String getDescription() {
    if (_bmi! >= 25) {
      return 'You have a higher than body normal weight. Try to exercise more!';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Work!';
    } else {
      return 'You have a lower than body weight.You can eat a bit more!';
    }
  }
}
