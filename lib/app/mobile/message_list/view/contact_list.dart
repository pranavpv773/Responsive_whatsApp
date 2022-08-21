import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view/info.dart';
import 'package:whatsapp_clone/app/mobile/message/view/message_screen.dart';
import 'package:whatsapp_clone/app/mobile/message/view_model/message_provider.dart';
import 'package:whatsapp_clone/app/mobile/message_list/view_model/message_list_provider.dart';
import 'package:whatsapp_clone/app/mobile/new_message/view/new_message.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {
          RoutesProvider.nextScreen(
            screen: const NewMessageScreen(),
          );
        },
        child: const Icon(
          Icons.message,
          color: kWhite,
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
                    selectedTileColor: chatBarMessage,
                    selectedColor: tabColor,
                    selected: context.watch<MessageListProvider>().isSelected,
                    onTap: () {
                      context
                          .read<MessageProvider>()
                          .disposeController(context);
                      RoutesProvider.nextScreen(
                        screen: MessageScreen(
                          userName: info[index]['name'].toString(),
                          profileImage: info[index]['profilePic'].toString(),
                          lastSceen: info[index]['time'].toString(),
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
                    onLongPress: () =>
                        context.read<MessageListProvider>().toggleSelection(),
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
