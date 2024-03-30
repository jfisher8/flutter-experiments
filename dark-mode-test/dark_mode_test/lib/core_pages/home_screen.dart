// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   bool toggle = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SwitchListTile(
//           title: const Text('test switch'),
//           value: true,
//           onChanged: (value) {
//             setState
//           //logic here
//         },),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SwitchListTile(
          title: const Text('Dark Mode'),
          secondary: const Icon(Icons.dark_mode_rounded),
          value: isToggled,
          onChanged:(value) {
            setState(() {
              isToggled != true ? isToggled = true : isToggled = false;
            });
          },),
      ),
    );
  }
}