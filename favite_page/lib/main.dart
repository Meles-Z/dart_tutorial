import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> data = ["newstay", "lightstream", "mainbrake"];
  int currentIndex = 0;
  Map<String, bool> likedStatus = {};
  List<String> likedItems = [];
  bool showFavorites = false;

  @override
  void initState() {
    super.initState();
    for (var word in data) {
      likedStatus[word] = false;
    }
  }

  void showNextWord() {
    setState(() {
      if (currentIndex < data.length - 1) {
        currentIndex++;
      }
    });
  }

  void toggleLike() {
    setState(() {
      String currentWord = data[currentIndex];
      bool isLiked = likedStatus[currentWord] ?? false;
      likedStatus[currentWord] = !isLiked;

      if (likedStatus[currentWord]!) {
        likedItems.add(currentWord);
      } else {
        likedItems.remove(currentWord);
      }
    });
  }

  void switchToFavorites() {
    setState(() {
      showFavorites = true;
    });
  }

  void switchToHome() {
    setState(() {
      showFavorites = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar Menu
          Container(
            color: Colors.white,
            width: 110.w,
            child: Column(
              children: [
                _buildListTile(
                  icon: Icons.home,
                  title: 'Home',
                  isActive: !showFavorites,
                  onTap: switchToHome,
                ),
                _buildListTile(
                  icon: Icons.favorite,
                  title: 'Favorite',
                  isActive: showFavorites,
                  onTap: switchToFavorites,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 214, 158, 158),
              child: showFavorites ? _buildFavoritesView() : _buildMainContent(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, required bool isActive, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: isActive ? Colors.red : Colors.black,
      ),
      title: MediaQuery.of(context).size.width > 600 ? Text(title) : null, // Show title only on larger screens
      onTap: onTap,
    );
  }

  Widget _buildMainContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            data[currentIndex],
            style: const TextStyle(fontSize: 24),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: toggleLike,
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: (likedStatus[data[currentIndex]] ?? false) ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  const Text('Like'),
                ],
              ),
            ),
            SizedBox(width: 10.w),
            ElevatedButton(
              onPressed: showNextWord,
              child: const Text('Next'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFavoritesView() {
    return Column(
      children: [
        if (likedItems.isNotEmpty) 
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'You have ${likedItems.length} favorites:',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        Expanded(
          child: likedItems.isEmpty
              ? const Center(
                  child: Text(
                    'No Favorites Yet',
                    style: TextStyle(fontSize: 24),
                  ),
                )
              : ListView.builder(
                  itemCount: likedItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.favorite),
                      title: Text(likedItems[index]),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
