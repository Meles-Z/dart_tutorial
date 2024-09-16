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
  List<Map<String, String>> taskList = [];

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
              if (taskList.isEmpty)
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
              Column(
                children: [
                  for (var task in taskList) ...[
                    CustomTileContainer(
                      onTap: () async {
                        final result = await context.push<Map<String, String>>(
                          "/task-detail",
                          extra: task, 
                        );

                        if (result != null && result.isNotEmpty) {
                          setState(() {
                            final index = taskList.indexOf(task);
                            taskList[index] =
                                result; 
                          });
                        }
                      },
                      leading: task['title']![0].toUpperCase(),
                      title: task['title'] ?? '',
                      time: task['dueDate'] ?? '',
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                  ]
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: 'Create task',
                onPressed: () async {
                  final result =
                      await context.push<Map<String, String>>("/add-task");

                  if (result != null && result.isNotEmpty) {
                    setState(() {
                      taskList.add(result);
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
