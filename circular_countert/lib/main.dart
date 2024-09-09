
import 'package:circular_countert/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:'Circular counter widget',
      theme: ThemeData.light(useMaterial3: true),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}