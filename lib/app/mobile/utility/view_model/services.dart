import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view/choose_country.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/settings/view/settings.dart';

class ServicesProvider with ChangeNotifier {
  void selectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        RoutesProvider.nextScreen(
          screen: const ChooseCountry(),
        );
        break;
      case 1:
        RoutesProvider.nextScreen(
          screen: const ChooseCountry(),
        );
        break;
      case 2:
        RoutesProvider.nextScreen(
          screen: const ChooseCountry(),
        );
        break;
      case 3:
        RoutesProvider.nextScreen(
          screen: const ChooseCountry(),
        );
        break;
      case 4:
        RoutesProvider.nextScreen(
          screen: const SettingScreen(),
        );
        break;
      case 5:
        RoutesProvider.nextScreen(
          screen: const SettingScreen(),
        );
        break;
    }
  }
}
