import 'package:flutter/material.dart';
import 'package:navigation_routing/feacture/presentation/screen/create_task.dart';
import 'package:navigation_routing/feacture/presentation/widgets/custome_button.dart';

class EditTask extends StatefulWidget {
  const EditTask({super.key});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  int? taskIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Get the passed arguments (task data)
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;
    if (arguments != null) {
      titleEditingController.text = arguments['title'] ?? '';
      descriptionEditingController.text = arguments['description'] ?? '';
      taskIndex = arguments['index'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Edit Task'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CustomeFormContainer(
              hint: 'Edit task title',
              controller: titleEditingController,
            ),
            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CustomeFormContainer(
              hint: 'Edit task description',
              controller: descriptionEditingController,
            ),
            const SizedBox(height: 16),
            CustomeButton(
              titleEditingController: titleEditingController,
              descriptionEditingController: descriptionEditingController,
              text: 'Save',
              onPressed: () {
                if (titleEditingController.text.isNotEmpty &&
                    descriptionEditingController.text.isNotEmpty) {
                  Navigator.pop(context, {
                    "title": titleEditingController.text,
                    "description": descriptionEditingController.text
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
