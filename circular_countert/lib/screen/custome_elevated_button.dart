import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function() f;
  const CustomElevatedButton({super.key,
  required this.text,
  required this.f,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle
      ),
      child: ElevatedButton(onPressed: f, child: Text(text)),
    );
  }
}