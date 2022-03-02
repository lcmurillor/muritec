import 'package:flutter/Material.dart';

class MenuProvider extends ChangeNotifier {
  double _menuSize = 80;

  double getmenuSize() {
    return _menuSize;
  }

  setMenuSize(double size) {
    _menuSize = size;
    notifyListeners();
  }
}
