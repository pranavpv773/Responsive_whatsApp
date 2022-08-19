import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/profile/view/profile.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/settings/view/widget/listbuillder.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const CircleAvatharPicture(
                radius: 30,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Pranav PV',
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code_sharp,
                      color: tabColor,
                    ),
                  )
                ],
              ),
              onTap: () => RoutesProvider.nextScreen(
                screen: const ProfileScreen(),
              ),
            ),
          ),
          const ListviewBuilderHelper(),
          const ListTile(
            leading: Icon(
              Icons.people,
              color: kGrey,
            ),
            title: Text(
              'Invite a friend',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'From',
                    style: TextStyle(color: kGrey),
                  ),
                ),
                Image.asset(
                  'assets/fromMeta.png',
                  width: width / 6,
                  height: width / 19,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleAvatharPicture extends StatelessWidget {
  const CircleAvatharPicture({Key? key, required this.radius})
      : super(key: key);
  final double radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: const AssetImage('assets/circleAvathar.jpg'),
    );
  }
}
