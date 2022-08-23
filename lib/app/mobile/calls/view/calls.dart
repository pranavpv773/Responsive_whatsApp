import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Calls',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.call_sharp,
          color: kWhite,
        ),
      ),
    );
  }
}
