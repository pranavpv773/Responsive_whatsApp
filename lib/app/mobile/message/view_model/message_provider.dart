import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view_model/message_list_provider.dart';

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

  disposeController(BuildContext context) {
    if (messageController.text.isNotEmpty) {
      messageController.clear();
      messageController.text = '';
      visibleIcons = true;
      notifyListeners();
    }
    context.read<MessageListProvider>().isSelected = false;
    notifyListeners();
  }
}
