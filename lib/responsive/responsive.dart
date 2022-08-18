import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //webScreen
          return webScreenLayout;
        } else {
          //mobileScreen
          return mobileScreenLayout;
        }
      },
    );
  }
}
