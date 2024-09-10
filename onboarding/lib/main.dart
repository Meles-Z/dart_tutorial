import 'package:flutter/material.dart';
import 'package:onboarding/screen/create_task_screen.dart';
import 'package:onboarding/screen/image_base_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Onboarding app',
      // comment one of them when run different screeen
      home: CreateTaskScreen(),
      // home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}