import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key,
      this.titleEditingController,
      this.descriptionEditingController,
      required this.text,
      this.onPressed});

  final TextEditingController? titleEditingController;
  final TextEditingController? descriptionEditingController;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
