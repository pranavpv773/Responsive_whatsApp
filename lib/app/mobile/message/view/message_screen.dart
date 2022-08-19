// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';

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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        title: Container(
          child: Row(
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
        ),
        actions: const [
          ActionButtons(),
        ],
      ),
      body: Container(color: Colors.indigo),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 1.0,
            ),
            child: FloatingMessage(width: width, height: height),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              bottom: 6,
            ),
            child: SizedBox(
              width: width / 8,
              child: FloatingActionButton(
                backgroundColor: tabColor,
                onPressed: () {},
                child: const Icon(
                  Icons.mic,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class FloatingMessage extends StatelessWidget {
  const FloatingMessage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 1.25,
      height: height / 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: appBarColor,
      ),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        expands: true,
        style: const TextStyle(
          overflow: TextOverflow.clip,
          color: kGrey,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: appBarColor,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions,
                color: kGrey,
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: appBarColor,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: appBarColor,
              width: 2.0,
            ),
          ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: const BorderSide(
          //     color: Colors.grey,
          //     width: 2.0,
          //   ),
          // ),
          hintText: "Message",
          hintStyle: const TextStyle(
            fontSize: 20,
            color: kGrey,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.attach_file_sharp,
                //     color: kGrey,
                //     size: 20,
                //   ),
                // ),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.currency_rupee_sharp,
                //     color: kGrey,
                //     size: 20,
                //   ),
                // ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt,
                    color: kGrey,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
