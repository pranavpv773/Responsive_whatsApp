import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/message/view_model/emoji_provider.dart';
import 'package:whatsapp_clone/app/mobile/message/view_model/message_provider.dart';
import 'three_icon_float.dart';

class SecondFloatButton extends StatelessWidget {
  const SecondFloatButton({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingMessage(
          width: width,
          height: height,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            bottom: 6,
          ),
          child: SizedBox(
            width: width / 8,
            child: Consumer<MessageProvider>(builder: (context, value, _) {
              return FloatingActionButton(
                backgroundColor: tabColor,
                onPressed: () {},
                child: value.visibleIcons == true
                    ? const Icon(
                        Icons.mic,
                        color: textColor,
                      )
                    : const Icon(
                        Icons.send,
                        color: textColor,
                      ),
              );
            }),
          ),
        ),
      ],
    );
    //     context.read<EmojiProvider>().emojiShowing == true
    //         ? buildSticker()
    //         : Container()
    //   ],
    // );
  }
}
