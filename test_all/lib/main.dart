import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_all/main_screen/home_screen.dart';
import 'package:test_all/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      routerConfig: _router,
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: "/",
  routes: [
  
  GoRoute(
    path: "/",
    builder: (context, state) {
      return const MainScreen();
    },
  ),
  GoRoute(
    name: "/home",
    path: "/home",
    builder: (context, state) {
      return const HomeScreen();
    },
  )
]);
