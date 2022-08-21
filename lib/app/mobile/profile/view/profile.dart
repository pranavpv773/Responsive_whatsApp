import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/settings/view/settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height / 25),
            child: Center(
              child: Stack(
                children: [
                  CircleAvatharPicture(radius: width / 5),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: tabColor,
                      radius: width / 16,
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const ListbuiderHelper(
            title: 'name',
            subtitle:
                'This is not your username or pin.This name will be visible to your WhatsApp contacts.',
            icon1: Icons.person,
            icon2: Icons.edit,
            sub: 'pranav Pv',
            first: true,
          ),
          const Divident(),
          const ListbuiderHelper(
            title: 'About',
            subtitle: 'busy',
            icon1: Icons.info,
            icon2: Icons.edit,
            first: false,
          ),
          const Divident(),
          const ListbuiderHelper(
            title: 'name',
            subtitle: '+91 7034888756',
            icon1: Icons.phone,
            sub: 'pranav',
          ),
        ],
      ),
    );
  }
}

class Divident extends StatelessWidget {
  const Divident({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kGrey,
      indent: 50,
    );
  }
}

class ListbuiderHelper extends StatelessWidget {
  const ListbuiderHelper(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon1,
      this.icon2,
      this.sub,
      this.first})
      : super(key: key);
  final bool? first;
  final String title;
  final String subtitle;
  final String? sub;

  final IconData icon1;
  final IconData? icon2;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon1,
          color: kGrey,
        ),
        title: first == true
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: kGrey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(sub!),
                  ),
                ],
              )
            : Text(title),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text(
            subtitle,
            style: const TextStyle(color: kGrey),
          ),
        ),
        trailing: Icon(
          icon2,
          color: tabColor,
        ));
  }
}
