import 'package:flutter/material.dart';

class CustomeFormContainer extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;

  const CustomeFormContainer({super.key, required this.hint, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
