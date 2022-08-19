import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsapp_clone/app/mobile/routes/routes.dart';
import 'package:whatsapp_clone/app/mobile/settings/view_model/utility/maps.dart';

class ListviewBuilderHelper extends StatelessWidget {
  const ListviewBuilderHelper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    settings[index]['title'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      settings[index]['sub_title'].toString(),
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  leading: Icon(
                    IconData(
                      int.parse(
                        settings[index]['icon'].toString(),
                      ),
                    ),
                  ),
                  onTap: () {
                    RoutesProvider.nextScreen(
                      screen: settings[index]['ontab'],
                    );
                  },
                ),
              )
            ],
          );
        },
        itemCount: settings.length,
      ),
    );
  }
}
