import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.redAccent,
              child: Center(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Image.asset("../asset/bord.png"),

                   const SizedBox(height: 20,),
                   ElevatedButton(onPressed: (){}, child: const Text('Get Started'))
                ],
               ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.blue, 
              child: const Center(
                child: Text(
                  'Hi there',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
