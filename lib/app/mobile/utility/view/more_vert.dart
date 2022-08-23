import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/utility/view_model/services.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      color: appBarColor,
      itemBuilder: (context) => [
        const PopupMenuItem<int>(
          value: 0,
          child: Text("New group"),
        ),
        const PopupMenuItem<int>(
          value: 1,
          child: Text("New broadcast"),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Text(
            "Linked devices",
          ),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Text(
            "Starred messages",
          ),
        ),
        const PopupMenuItem<int>(
          value: 4,
          child: Text(
            "payments",
          ),
        ),
        const PopupMenuItem<int>(
          value: 5,
          child: Text(
            "Settings",
          ),
        ),
      ],
      onSelected: (item) =>
          context.read<ServicesProvider>().selectedItem(context, item),
    );
  }
}
