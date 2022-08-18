import 'package:flutter/widgets.dart';

class ChooseProvider with ChangeNotifier {
  bool searchSelect = false;
  void searchOnPressTrue(bool booli) {
    searchSelect = booli;
    notifyListeners();
  }
}
