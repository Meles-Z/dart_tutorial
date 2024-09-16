import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_app/widgets/custom_button.dart';
import 'package:router_app/widgets/tile_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFCFC),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Text(
              'Todo List',
              style: TextStyle(color: Colors.black),
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
          ),
          actions: const [Icon(Icons.more_vert, color: Colors.black)],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('../assets/stick-man.png'),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Task List',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const CustomTileContainer(
                leading: 'U',
                title: 'UI/UX App Design',
                time: 'April 29, 2023',
                color: Colors.red,
              ),
              const SizedBox(height: 12),
              const CustomTileContainer(
                leading: 'U',
                title: 'UI/UX App Design',
                time: 'April 29, 2023',
                color: Colors.greenAccent,
              ),
              const SizedBox(height: 12),
              const CustomTileContainer(
                leading: 'V',
                title: 'View Candidates',
                time: 'April 29, 2023',
                color: Colors.amber,
              ),
              const SizedBox(height: 12),
              const CustomTileContainer(
                leading: 'F',
                title: 'Football Cu Drybiling',
                time: 'April 29, 2023',
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Create task',
                onPressed: () {
                  context.go("/add-task");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
