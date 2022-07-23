import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/constants/colors.dart';
import 'package:whatsapp_clone/presentation/mobile/calls/calls.dart';
import 'package:whatsapp_clone/presentation/mobile/status/status.dart';
import '../contacts/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
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
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
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
        ),
        body: const TabBarView(
          children: [
            Center(
              child: ContactList(),
            ),
            Center(
              child: StatusScreen(),
            ),
            Center(
              child: CallScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
