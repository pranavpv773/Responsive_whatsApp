import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';
import 'package:whatsapp_clone/app/mobile/splash/view/splash.dart';
import 'package:whatsapp_clone/app/mobile/splash/view_model/slash_provider.dart';
import 'package:whatsapp_clone/responsive/responsive.dart';
import 'app/mobile/routes/routes.dart';
import 'web/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChooseProvider(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: RoutesProvider.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const ResponsiveLayout(
          mobileScreenLayout: SplashScreen(),
          webScreenLayout: WebScreenLayout(),
        ),
      ),
    );
  }
}
