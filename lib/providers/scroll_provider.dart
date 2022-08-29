// ignore_for_file: file_names

import 'package:flutter/Material.dart';
export 'package:provider/provider.dart';

class ScrollProvider extends ChangeNotifier {
  ScrollController controller = ScrollController();
  double _offset = 0;

  double getoffset() {
    return _offset;
  }

  setoffset(double offset) {
    _offset = offset;
    changeScroll();
  }

  changeScroll() {
    controller.position.jumpTo(_offset);
    notifyListeners();
  }
}
