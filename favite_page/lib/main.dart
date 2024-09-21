import 'package:favite_page/screen/custom_expanded.dart';
import 'package:favite_page/screen/elevated_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _currentWidget = const HomeExpanded();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Container(
            width: screenWidth * 0.3,
            padding: const EdgeInsets.all(20),
            color: Colors.grey[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    setState(() {
                      _currentWidget = const HomeExpanded();
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorite'),
                  onTap: () {
                    setState(() {
                      _currentWidget = const CustomExpanded(title: 'Nova', favorites: [],);
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: _currentWidget,
          ),
        ],
      ),
    );
  }
}

class HomeExpanded extends StatelessWidget {
  const HomeExpanded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
              children: [
                CustomElevatedButton(
                  text: 'Favorite',
                  icons: Icons.favorite,
                  onPressed: () {
                    // Add your button logic here
                  },
                ),
                const SizedBox(width: 17),
                CustomElevatedButton(
                  text: 'Next',
                  onPressed: () {
                    // Add your button logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
