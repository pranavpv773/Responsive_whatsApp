import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';
import 'package:whatsapp_clone/app/mobile/utility/view/more_vert.dart';

class HomeTabAppbar extends StatelessWidget {
  const HomeTabAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      title: const Text(
        'Whatsapp',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.read<ChooseProvider>().searchOnPressTrue(true);
          },
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        const MoreOptions(),
      ],
      bottom: const TabBar(
        indicatorColor: tabColor,
        indicatorWeight: 4,
        labelColor: tabColor,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        tabs: [
          // Tab(
          //   icon: Icon(
          //     Icons.camera,
          //   ),
          // ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "Calls",
          ),
        ],
      ),
    );
  }
}
