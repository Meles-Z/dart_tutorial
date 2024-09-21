import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheckedBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is the row');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.local_fire_department),
                Text('Row Widget'),
                Icon(Icons.local_fire_department)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Switch(
            value: isSwitch,
            onChanged: (bool newChange) {
              setState(() {
                isSwitch = newChange;
              });
            },
          ),
          const SizedBox(height: 10),
          Checkbox(
            value: isCheckedBox,
            onChanged: (bool? newCheckBox) {
              setState(() {
                isCheckedBox = newCheckBox;
              });
            },
          ),
          Image.network("https://cdn.standardmedia.co.ke/sdemedia/sdeimages/saturday/cfmm2a0wjejyj5b5c3a05728bf.jpg")
        ],
      ),
    );
  }
}
