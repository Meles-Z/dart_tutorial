import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function() counterController;
  const CustomElevatedButton({super.key,
  required this.text,
  required this.counterController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle
      ),
      child: ElevatedButton(onPressed: counterController, child: Text(text)),
    );
  }
}