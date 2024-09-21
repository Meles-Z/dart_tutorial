import 'package:flutter/material.dart';

class CustomExpanded extends StatelessWidget {
  final List<String> favorites;

  const CustomExpanded({super.key, required this.favorites, required String title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const Center(
            child: Text('You have favorites'),
          ),
          ...favorites.map((title) => ListTile(
                leading: const Icon(Icons.favorite),
                title: Text(title),
              )),
        ],
      ),
    );
  }
}
