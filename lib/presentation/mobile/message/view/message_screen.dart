import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/constants/colors.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName),
                Text(
                  "last seen today at $lastSceen",
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.videocam),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.call),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
        ],
      ),
      body: Container(color: Colors.indigo),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.mic,
          color: Colors.white,
        ),
      ),
    );
  }
}
