import 'package:flutter/material.dart';
import 'package:todo_list/feacture/presentation/screen/task_detail.dart';
import 'package:todo_list/feacture/presentation/screen/task_list.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskList(),
      // home: TaskDetail(),
      title: 'Task list',
      debugShowCheckedModeBanner: false,
    );
  }
}