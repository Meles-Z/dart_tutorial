import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children:  [
          const Text('Hello home page'),

          ElevatedButton(onPressed: (){
            context.goNamed("/one");   
          },
          child: const Text('Check')),
        ],
      ),
    );
  }
}
