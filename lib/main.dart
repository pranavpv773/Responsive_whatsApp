import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/constants/colors.dart';
import 'package:whatsapp_clone/presentation/mobile/screens/view/mobile_screen_layout.dart';
import 'package:whatsapp_clone/presentation/responsive/responsive.dart';
import 'package:whatsapp_clone/presentation/web/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
