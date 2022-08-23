import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';

import 'widgets/appbar_change.dart';

class ChooseCountry extends StatelessWidget {
  const ChooseCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: context.watch<ChooseProvider>().searchSelect == false
          ? PreferredSize(
              preferredSize: Size.fromHeight(
                height / 15,
              ),
              child: const ChooseAppbar(),
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(
                height / 15,
              ),
              child: const SearchAppbar(),
            ),
      body: ListView(),
    );
  }
}
