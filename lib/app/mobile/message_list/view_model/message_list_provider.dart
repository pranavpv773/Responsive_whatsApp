import 'package:flutter/widgets.dart';

class MessageListProvider with ChangeNotifier {
  bool isSelected = false;
  void toggleSelection() {
    if (isSelected) {
      isSelected = false;
      notifyListeners();
    } else {
      isSelected = true;
      notifyListeners();
    }
  }
}
