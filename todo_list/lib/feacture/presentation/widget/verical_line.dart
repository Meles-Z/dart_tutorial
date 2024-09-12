import 'package:flutter/material.dart';

class CustomeVerticalLine extends StatelessWidget {
  final Color color;
  const CustomeVerticalLine({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 4,
      color: color,
    );
  }
}