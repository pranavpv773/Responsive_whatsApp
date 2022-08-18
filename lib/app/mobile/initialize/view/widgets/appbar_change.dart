// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:provider/provider.dart';
// import 'package:whatsapp_clone/app/constants/colors.dart';
// import 'package:whatsapp_clone/app/mobile/initialize/view_model/choose_provider.dart';

// class AppbarChange extends StatelessWidget {
//   const AppbarChange({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return context.watch<ChooseProvider>().searchSelect == false
//           ? AppBar(
//               title: const Text('Choose a country'),
//               actions: [
//                 IconButton(
//                     onPressed: () {
//                       context.read<ChooseProvider>().searchOnPressTrue();
//                     },
//                     icon: const Icon(Icons.search))
//               ],
//             )
//           : AppBar(
//               title: TextFormField(),
//               leading: IconButton(
//                 onPressed: () {
//                   context.read<ChooseProvider>().searchOnPressFalse();
//                 },
//                 icon: const Icon(
//                   Icons.arrow_back,
//                   color: kGrey,
//                 ),
//               ),
//             );
//   }
// }