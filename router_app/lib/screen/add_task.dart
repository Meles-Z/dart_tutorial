import 'package:flutter/material.dart';
import 'package:router_app/widgets/custom_button.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Create new task',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Main task name',
              style: TextStyle(color: Colors.redAccent),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5))
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'UI/UX App Design'),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Deu Date',
              style: TextStyle(color: Colors.redAccent),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('April 29, 2023, 12:36 PM'),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.date_range))
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Description',
              style: TextStyle(color: Colors.redAccent),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5))
                  ]),
              child: const Text(
                  'First I have to animate the logo and prototyping my design. It’svery important. \n\n\n'),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    backgroundColor: Colors.redAccent,
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child: const Text(
                    'Add task',
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
