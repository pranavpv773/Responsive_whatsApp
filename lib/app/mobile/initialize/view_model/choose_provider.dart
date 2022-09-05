import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/screens/view/mobile_screen_layout.dart';

class ChooseProvider with ChangeNotifier {
  bool searchSelect = false;
  void searchOnPressTrue(bool booli) {
    searchSelect = booli;
    notifyListeners();
  }

  screeFunction(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("title"),
          content: const Text('data'),
          actions: <Widget>[
            TextButton(
              child: const Text('EDIT'),
              onPressed: () {
                // RoutesProvider.nextScreen(screen: const LoginScreen());
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                RoutesProvider.removeScreenUntil(
                    screen: const MobileScreenLayout());
              },
            ),
          ],
        );
      },
    );
  }
}
