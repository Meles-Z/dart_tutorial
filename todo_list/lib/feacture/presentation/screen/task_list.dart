
import 'package:flutter/material.dart';
import 'package:todo_list/feacture/presentation/widget/custom_container.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1), 
          ),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(1),
      
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.more_vert),
          ],
          leading: const Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFCFC),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Text(
              'Task List',
              style: TextStyle(color: Colors.black,),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: Image.asset('../assets/stc.png',
            ),
          ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Task list', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const CostomContainer(firstLetter: 'U', description: 'ux/ux app design', date: 'Appril 29,2023', color1: Colors.redAccent),
            const SizedBox(height: 8),
            const CostomContainer(firstLetter: 'U', description: 'ux/ux app design', date: 'Appril 29,2023', color1: Colors.amber,),
            const SizedBox(height: 8),
            const CostomContainer(firstLetter: 'V', description: 'View candidates', date: 'Appril 29,2023', color1: Colors.green,),
            const SizedBox(height: 8),
            const CostomContainer(firstLetter: 'F', description: 'Footballs cu drblings', date: 'Appril 29,2023', color1: Colors.redAccent,),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
                ), 
                child: const Text('Create task', style: TextStyle(color: Colors.white),),
                ),
            ),
          ],
        ),
      ),
    );
  }
}