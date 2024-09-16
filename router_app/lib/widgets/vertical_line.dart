import 'package:flutter/material.dart';

class VerticalLine extends StatelessWidget {
  final Color color;
  const VerticalLine({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 30,
      color: color,
    );
  }
}
