import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/constants/colors.dart';
import 'package:whatsapp_clone/presentation/mobile/contacts/view/info.dart';
import 'package:whatsapp_clone/presentation/mobile/message/view/message_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessageScreen(
                            userName: info[index]['name'].toString(),
                            profileImage: info[index]['profilePic'].toString(),
                            lastSceen: info[index]['time'].toString(),
                          ),
                        ),
                      );
                    },
                    title: Text(
                      info[index]['name'].toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85,
                )
              ],
            );
          },
          itemCount: info.length,
        ),
      ),
    );
  }
}
