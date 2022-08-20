import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view/contact_list.dart';
import 'package:whatsapp_clone/web/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/web/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/backgroundImage.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: const Center(
              child: Text('Chats are here'),
            ),
          )
        ],
      ),
    );
  }
}
