import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/splash/view_model/slash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SplashProvider>(context, listen: false).goHome(context);
    });
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: appBarColor,
      body: ColoredBox(
        color: appBarColor,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: height / 2.5),
                child: Image.asset(
                  'assets/logo.png',
                  width: width / 4,
                ),
              ),
              const Text(
                'From',
              ),
              Image.asset(
                'assets/fromMeta.png',
                width: width / 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
