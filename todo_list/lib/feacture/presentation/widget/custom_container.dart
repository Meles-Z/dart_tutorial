

import 'package:flutter/material.dart';
import 'package:todo_list/feacture/presentation/widget/verical_line.dart';

class CostomContainer extends StatelessWidget {
  final String firstLetter;
  final String description;
  final String date;
  final Color color1;
  const CostomContainer({
    super.key,
    required this.firstLetter, 
    required this.description, 
    required this.date,
    required this.color1
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 10.0,
          offset: const Offset(0, 5),
        )],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        SizedBox(
          child: Row(
            children: [
              Text(firstLetter, style: const TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(width: 12,),
        
              Text(description),],
          ),
        ),
        SizedBox(
          child: Row(
            children: [
              Text(date),
        const SizedBox(width: 14),
        CustomeVerticalLine(color: color1) 
            ],
          ),
        )
         
      ],
      ),
    );
  }
}
