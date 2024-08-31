import 'package:code_review_guidline/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const MainScreen(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}

