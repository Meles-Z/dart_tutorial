import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Test for all '),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(children: const [
        Center(
          child: Text('Hey there '),
        ),
        
      ]),
    );
  }
}
