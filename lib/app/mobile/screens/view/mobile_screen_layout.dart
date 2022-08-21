import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/mobile/calls/view/calls.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view/contact_list.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view/widgets/appbar_change.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';
import 'package:whatsapp_clone/app/mobile/status/view/status.dart';

import 'widgets/appbar.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: context.watch<ChooseProvider>().searchSelect == false
            ? const PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: HomeTabAppbar(),
              )
            : const PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: SearchAppbar(),
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
