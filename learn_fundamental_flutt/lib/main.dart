import 'package:flutter/material.dart';
import 'package:learn_fundamental_flutt/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TestApp(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action button pressed');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
        ],
        onDestinationSelected: (int index){
          setState(() {
            currentPage=index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
