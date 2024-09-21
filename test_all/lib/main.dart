import 'package:flutter/material.dart';
import 'package:test_all/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test for app',
      home: const HomeScreen(),
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController title = TextEditingController();

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: name,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              hintText: 'Enter name'),
              
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(border: OutlineInputBorder(),
              hintText: 'Enter email'),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: title,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Enter title'),
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainScreen(title: title.text, name: name.text, email: email.text)));
          }, child: const Text('Submit'))
        ],
      ),
    );
  }
}
