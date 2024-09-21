import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final IconData? icons;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.icons,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icons != null ? Icon(icons) : const SizedBox.shrink(),
      label: Text(text),
      onPressed: onPressed,
    );
  }
}
