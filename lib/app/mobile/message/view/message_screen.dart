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
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 1.0,
            ),
            child: Container(
              width: width / 1.25,
              height: height / 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: appBarColor,
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please fill this field';
                  }
                },
                style: const TextStyle(
                  color: kGrey,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                  fillColor: appBarColor,
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  hintText: "Message",
                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: kGrey,
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      kWidth10,
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file_sharp,
                          color: kGrey,
                        ),
                      ),
                      kWidth10,
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.currency_rupee_sharp,
                          color: kGrey,
                        ),
                      ),
                      kWidth10,
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt,
                          color: kGrey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
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
