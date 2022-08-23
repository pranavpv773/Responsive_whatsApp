import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/message/view_model/message_provider.dart';

class FloatingMessage extends StatelessWidget {
  const FloatingMessage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Consumer<MessageProvider>(builder: (context, value, _) {
      return Container(
        width: width / 1.25,
        height: height / 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: appBarColor,
        ),
        child: TextFormField(
          controller: value.messageController,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          expands: true,
          cursorColor: tabColor,
          cursorHeight: height / 25,
          onChanged: (value) {
            context.read<MessageProvider>().changingWidgets(value);
          },
          style: const TextStyle(
            overflow: TextOverflow.clip,
            color: kGrey,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10),
            fillColor: appBarColor,
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 2.0,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.emoji_emotions,
                  color: kGrey,
                ),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
              borderSide: const BorderSide(
                color: appBarColor,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
              borderSide: const BorderSide(
                color: appBarColor,
                width: 2.0,
              ),
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(30),
            //   borderSide: const BorderSide(
            //     color: Colors.grey,
            //     width: 2.0,
            //   ),
            // ),

            hintText: "Message",
            hintStyle: const TextStyle(
              fontSize: 20,
              color: kGrey,
            ),

            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: context.read<MessageProvider>().visibleIcons == true
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attach_file_sharp,
                            color: kGrey,
                            size: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.currency_rupee_sharp,
                            color: kGrey,
                            size: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            color: kGrey,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  : IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file_sharp,
                        color: kGrey,
                        size: 20,
                      ),
                    ),
            ),
          ),
        ),
      );
    });
  }
}
