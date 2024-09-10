import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Method to format the date
  String _formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('MMMM d, yyyy, h:mm a');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black, // Border color
            width: 5, // Border width
          ),
    )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
            size: 30,
          ),
          actions: const [Icon(Icons.more_vert, size: 30)],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Create new task",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                color: Colors.grey,
                height: 1,
              ),
              const SizedBox(height: 12),
              const TextContainer(text: 'Main task name'),
              const SizedBox(height: 4),
              const CustomeContainer(text: 'UI/UX app design'),
              const SizedBox(height: 12),
             const TextContainer(text: 'Due date'),
              const SizedBox(height: 4),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _formatDate(selectedDate),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.date_range, color: Colors.redAccent),
                      onPressed: () => _selectDate(context),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
             const TextContainer(text: 'Description',),
              const SizedBox(height: 4),
              const CustomeContainer(
                  text:
                      "First I have to animate the logo and prototyping my design. It’s very important.",),
              const SizedBox(height: 90),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Add task',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextContainer extends StatelessWidget {
  final String text;
  const TextContainer({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
     child:  Text(text, style: const TextStyle(color: Colors.redAccent)),
    );
  }
}

class CustomeContainer extends StatelessWidget {
  final String text;
  const CustomeContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(text,),
      ),
    );
  }
}
