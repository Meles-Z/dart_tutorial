import 'package:circular_countert/screen/custome_elevated_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int counter=0;
  String stater='';

  void increment(){
   setState(() {
    counter++;
    if (counter>10){
      counter=0;
    }
    stater="Counter decrementing";
   });

  }
  void decrement(){
    setState(() {
      counter--;
    if(counter<0){
      counter=10;
    }
    stater="Counter decrementing";
    });

  }
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Counter ', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.white,),
        backgroundColor: Colors.black,
        actions: const [Icon(Icons.more_vert, color: Colors.white,)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$stater $counter'),
            const SizedBox(height: 40,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CustomElevatedButton(text: 'Increment', f: increment),
               const SizedBox(width: 20),
               CustomElevatedButton(text: 'Decrement', f: decrement)
            ],
           )       
          ],
        ),
      ),
    );
  }
}