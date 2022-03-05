import 'package:flutter/Material.dart';
export 'package:provider/provider.dart';

class MenuProvider extends ChangeNotifier {
  double _menuSize = 80;

  double getmenuSize() {
    return _menuSize;
  }

  setMediumSize() {
    _menuSize = 80;
    notifyListeners();
  }

  setDisplayMenuSize() {
    _menuSize = 250;
    notifyListeners();
  }
}
