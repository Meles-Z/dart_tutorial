import 'package:flutter/material.dart';
import 'package:test_all/sucess_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController textEdit = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              key: const ValueKey('check_field'),
              controller: textEdit,
              decoration: const InputDecoration(hintText: 'Enter email text'),
            ),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const SucessScreen();
              }));
            }, child: const Text("Click me"))
          ],
        ),
      ),
    );
  }
}
