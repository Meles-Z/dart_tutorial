import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Here is success scree'),
      ),
      body: const Center(
        child: Text('Hi there'),
      ),
    );
  }
}
