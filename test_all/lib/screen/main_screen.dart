import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;
  final String name;
  final String email;
  const MainScreen({super.key, 
  required this.title,
  required this.name,
  required this.email
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your name is: $title'),
          Text('Your email is:$name'),
          Text("Yor email is :$email")
        ],
      ),
    );
  }
}