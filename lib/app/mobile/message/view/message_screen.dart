// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/message/view_model/emoji_provider.dart';
import 'widgets/action_buttons.dart';
import 'widgets/second_float.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen(
      {Key? key,
      required this.userName,
      required this.profileImage,
      required this.lastSceen})
      : super(key: key);
  final String userName;
  final String profileImage;
  final String lastSceen;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmojiProvider>().emojiShowing = false;
    });
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                profileImage,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "last seen today at $lastSceen",
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: const [
          ActionButtons(),
        ],
      ),
      body: Container(
        color: backgroundColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: SecondFloatButton(
        width: width,
        height: height,
      ),
    );
  }
}
