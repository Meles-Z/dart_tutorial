import 'package:flutter/material.dart';
import 'package:navigation_routing/feacture/presentation/widgets/custome_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ...tasks.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, String> task = entry.value;
              return Card(
                child: CustomeListTile(
                  title: task['title'] ?? '',
                  description: task['description'] ?? '',
                  onTap: () async {
                    // Navigate to the edit screen, passing the task data and its index
                    var result = await Navigator.pushNamed(
                        context, '/edit-task', arguments: {
                      'index': index,
                      'title': task['title'],
                      'description': task['description']
                    });

                    if (result != null && result is Map<String, String>) {
                      setState(() {
                        tasks[index] = result;
                      });
                    }
                  },
                ),
              );
            }).toList(),
            const SizedBox(
              height: 16,
            ),
            CustomeButton(
              text: 'Add New Task',
              onPressed: () async {
                var result = await Navigator.pushNamed(context, "/add-task");
                if (result != null && result is Map<String, String>) {
                  setState(() {
                    tasks.add(result);
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomeListTile extends StatelessWidget {
  final String title;
  final String description;
  final Function()? onTap;

  const CustomeListTile({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      onTap: onTap,
    );
  }
}
