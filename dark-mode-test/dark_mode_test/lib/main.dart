import 'package:dark_mode_test/themes/theme_provider.dart';
import 'package:dark_mode_test/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dark_mode_test/core_pages/home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),
  child: const MainApp())
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      );
  }
}
