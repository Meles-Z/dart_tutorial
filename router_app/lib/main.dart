import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_app/screen/add_task.dart';
import 'package:router_app/screen/task_detail.dart';
import 'package:router_app/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

GoRouter _router = GoRouter(
  initialLocation: "/",
  routes: [
  
  GoRoute(
    name: "home",
    path: "/",
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    name: "addTask",
    path: "/add-task",
    builder: (context, state) {
      return const AddTask();
    },
  ),
  GoRoute(
    name: "taskDetail",
    path: "/task-detail",
    
    builder: (context, state) {
      final task = state.extra as Map<String, String>;
      return  TaskDetail(task: task);
    },
  ),
]);
