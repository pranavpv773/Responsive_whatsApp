import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/app/constants/colors.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view/choose_country.dart';
import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/screens/view/mobile_screen_layout.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: const Text(
          'Verify your phone number',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Center(
                child: Text(
                  'WhatsApp will need to verify your phone number.',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 78.0,
                ),
                child: TextFormField(
                  cursorColor: tabColor,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: messageColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: tabColor,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: tabColor,
                      size: 30,
                    ),
                  ),
                  enableInteractiveSelection: true,
                  readOnly: true,
                  onTap: () {
                    RoutesProvider.nextScreen(
                      screen: const ChooseCountry(),
                    );
                  },
                ),
              ),
              // Row(
              //   children: const [
              //     Padding(
              //       padding: EdgeInsets.only(
              //         left: 88.0,
              //       ),
              //       child: VerifyTextFormField(),
              //     ),
              //   ],
              // ),
              const VerifyTextFormField(),
            ],
          ),
          Column(
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(tabColor)),
                onPressed: () {
                  context.read<ChooseProvider>().screeFunction(context);
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: kWhite),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class VerifyTextFormField extends StatelessWidget {
  const VerifyTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: tabColor,
      decoration: const InputDecoration(
        suffixIcon: Icon(
          Icons.arrow_drop_down_outlined,
          color: tabColor,
          size: 30,
        ),
      ),
      onTap: () {
        RoutesProvider.nextScreen(
          screen: const ChooseCountry(),
        );
      },
    );
  }
}
