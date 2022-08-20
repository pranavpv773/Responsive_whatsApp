import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';

class ChooseAppbar extends StatelessWidget {
  const ChooseAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Choose a country'),
      actions: [
        IconButton(
          onPressed: () {
            context.read<ChooseProvider>().searchOnPressTrue(true);
          },
          icon: const Icon(Icons.search),
        )
      ],
    );
  }
}

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextFormField(),
      leading: IconButton(
        onPressed: () {
          context.read<ChooseProvider>().searchOnPressTrue(false);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kGrey,
        ),
      ),
    );
  }
}
