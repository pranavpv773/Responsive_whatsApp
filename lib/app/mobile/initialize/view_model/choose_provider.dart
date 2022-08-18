import 'package:flutter/widgets.dart';

class ChooseProvider with ChangeNotifier {
  bool searchSelect = false;
  void searchOnPressTrue() {
    searchSelect = true;
    notifyListeners();
  }

  void searchOnPressFalse() {
    searchSelect = false;
    notifyListeners();
  }
}
