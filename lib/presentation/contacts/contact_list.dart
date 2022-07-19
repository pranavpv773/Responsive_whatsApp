import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/contacts/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              info[index]['name'].toString(),
            ),
            subtitle: Text(
              info[index]['message'].toString(),
            ),
          );
        },
        itemCount: info.length,
      ),
    );
  }
}
