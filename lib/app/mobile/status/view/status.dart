import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view/info.dart';
import 'package:whatsapp_clone/app/mobile/status/widgets/status_builder.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text(
              'My Status',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: Text(
                'Today,09:45',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                info[0]['profilePic'].toString(),
              ),
            ),
            trailing: const Icon(Icons.more_horiz),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Recent updates'),
          ),
          const StatusBuilder(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt,
          color: kWhite,
        ),
      ),
    );
  }
}
