// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/mobile/agree_continue/view/agree_continue.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/screens/view/mobile_screen_layout.dart';

class SplashProvider with ChangeNotifier {
  Future<void> goHome(BuildContext context) async {
    await Future.delayed(
      const Duration(
        seconds: 5,
      ),
    );
    RoutesProvider.removeScreen(
      screen: const WelcomeAgree(),
    );
  }
}
