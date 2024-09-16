import 'package:flutter/material.dart';

class TaskDetail extends StatelessWidget {
  const TaskDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2), 
          ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(1),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Task Detail', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          actions: const [
            Icon(Icons.more_vert, color: Colors.black),
          ],
          leading: const Icon(Icons.arrow_back_ios, color: Colors.redAccent),
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset(
                "../assets/shopping.png", 
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xfff1eeee),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'UI/UX App Design',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xfff1eeee),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'First I have to animate the logo and prototyping my design. It’svery important. \n\n\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Deadline',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xfff1eeee),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'September 30, 2024',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}