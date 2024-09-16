import 'package:flutter/material.dart';
import 'package:router_app/widgets/vertical_line.dart';

class CustomTileContainer extends StatelessWidget {
  const CustomTileContainer(
      {super.key,
      required this.leading,
      required this.title,
      required this.time,
      required this.color,
      this.onTap
      });

  final String leading;
  final String title;
  final String time;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10.0,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        leading: Text(leading,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        title: Text(title),
        trailing: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(time),
            const SizedBox(width: 8),
            VerticalLine(color: color)
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}
