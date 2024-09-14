import 'package:flutter/material.dart';
import 'package:navigation_routing/feacture/presentation/screen/create_task.dart';
import 'package:navigation_routing/feacture/presentation/screen/edit_task.dart';
import 'package:navigation_routing/feacture/presentation/screen/home_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      title: 'TodoApp',
      
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>const HomeScreen(),
        "/add-task":(context)=>const CreateTask(),
        "/edit-task":(context)=>const EditTask()
      },
    );
  }
}