import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(
            8.0,
          ),
          child: Icon(Icons.videocam),
        ),
        Padding(
          padding: EdgeInsets.all(
            8.0,
          ),
          child: Icon(Icons.call),
        ),
        Padding(
          padding: EdgeInsets.all(
            8.0,
          ),
          child: Icon(
            Icons.more_vert,
          ),
        )
      ],
    );
  }
}
