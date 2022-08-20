import 'package:flutter/widgets.dart';

class MessageProvider with ChangeNotifier {
  TextEditingController messageController = TextEditingController();
  var visibleIcons = true;
  changingWidgets(String value) {
    if (messageController.text.isNotEmpty) {
      visibleIcons = false;
      notifyListeners();
    } else {
      visibleIcons = true;
      notifyListeners();
    }
  }

  disposeController() {
    if (messageController.text.isNotEmpty) {
      messageController.clear();
      print('reached');
      messageController.text = '';
      visibleIcons = true;
      notifyListeners();
    }
  }
}
