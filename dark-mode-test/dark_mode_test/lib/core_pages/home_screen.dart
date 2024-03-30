import 'package:dark_mode_test/themes/theme_provider.dart';
import 'package:provider/provider.dart';

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
        child: IconButton(
          onPressed:() {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            setState(() {
              isToggled != true ? isToggled = true : isToggled = false;
              //const Icon(Icons.light_mode_rounded);
            });
          },
          icon: isToggled == true ? const Icon(Icons.light_mode_rounded) : const Icon(Icons.dark_mode_rounded)),
        // child: SwitchListTile(
        //   title: const Text('Dark Mode'),
        //   secondary: const Icon(Icons.dark_mode_rounded),
        //   value: isToggled,
        //   onChanged:(value) {
        //     Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
        //     setState(() {
        //       isToggled != true ? isToggled = true : isToggled = false;
        //     });
        //   },),
      ),
    );
  }
}