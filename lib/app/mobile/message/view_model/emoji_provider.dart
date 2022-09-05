import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';

class EmojiProvider with ChangeNotifier {
  bool emojiShowing = false;
  // onEmojiSelected(Emoji emoji) {
  //   print('_onEmojiSelected: ${emoji.emoji}');
  // }

  // onBackspacePressed() {
  //   print('_onBackspacePressed');
  // }

  final iconListStrings = [
    {
      'section': 'Document',
      'color': const Color.fromARGB(255, 117, 30, 239),
      'icon': Icons.insert_drive_file_rounded,
    },
    {
      'section': 'Camera',
      'color': const Color.fromARGB(255, 217, 13, 95),
      'icon': Icons.camera_alt,
    },
    {
      'section': 'Gallery',
      'color': const Color.fromARGB(255, 191, 15, 200),
      'icon': Icons.photo,
    },
    {
      'section': 'Audio',
      'color': const Color.fromARGB(255, 199, 58, 19),
      'icon': Icons.headphones,
    },
    {
      'section': 'Location',
      'color': const Color.fromARGB(255, 18, 154, 20),
      'icon': Icons.location_on,
    },
    {
      'section': 'Payment',
      'color': Colors.teal,
      'icon': Icons.insert_drive_file_rounded,
    },
    {
      'section': 'Contact',
      'color': Colors.blue,
      'icon': Icons.person,
    },
  ];
  // void selectedItem(BuildContext context, item) {
  //   switch (item) {
  //     case 0:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 1:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 2:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 3:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 4:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 5:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //     case 6:
  //       RoutesProvider.nextScreen(
  //         screen: const ProductsScreen(),
  //       );
  //       break;
  //   }
  // }
}
