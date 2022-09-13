import 'package:flutter/material.dart';

class ThemeChangerProvider extends ChangeNotifier {
  ///
  ///  Theme Changer Function ====================>>>
  ///
  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  ///
  ///  Switch Button Variables ====================>>>
  ///
  bool isSwitched1 = false;
  bool isSwitched2 = true;
  bool isSwitched3 = false;
  bool isSwitched4 = true;
  bool isSwitched5 = true;

  ///
  ///  Switch Button ===========================>>>
  ///
  setCheck1(bool value) {
    this.isSwitched1 = value;

    notifyListeners();
  }

  setCheck2(bool value) {
    this.isSwitched2 = value;

    notifyListeners();
  }

  setCheck3(bool value) {
    this.isSwitched3 = value;

    notifyListeners();
  }

  setCheck4(bool value) {
    this.isSwitched4 = value;

    notifyListeners();
  }

  setCheck5(bool value) {
    this.isSwitched5 = value;

    notifyListeners();
  }
}
