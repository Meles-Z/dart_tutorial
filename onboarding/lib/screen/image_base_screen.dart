import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Container(
              color: Colors.redAccent,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("../asset/bord.png"),
                  const SizedBox(height: 15),
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                    ),
                    
                    onPressed: (){}, 
                    child: const Text('Get Started', style: TextStyle(color: Colors.white),),
                    ),
                    
                ],
              ),
              ),

            ),
            ),
          ],
        ),
      
      ),
    ); 
  }
}
