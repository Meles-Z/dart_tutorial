import 'package:flutter/material.dart';
import 'package:onboarding/screen/sizing_widget.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Onboarding app',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}