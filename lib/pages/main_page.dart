import 'package:flutter/material.dart';
import 'home_page.dart';
import 'favourites_page.dart';
import 'explore_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {

  List pages = [
    ExplorePage(),
    HomePage(),
    FavoritesPage()
  ];
  int currentIndex = 1;
  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTab,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black38,
        unselectedItemColor: Colors.black26,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.explore_outlined)),
          BottomNavigationBarItem(label: 'Home' , icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label: 'Favorites', icon: Icon(Icons.favorite_outline)),
        ],
      ),
    );
  }
}
