import 'package:flutter/material.dart';
import 'package:dark_mode_test/core_pages/home_screen.dart';

void main() {
  runApp(const MainApp(
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen()
      );
  }
}