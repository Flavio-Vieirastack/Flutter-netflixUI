import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/screens/homescreen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    Homescreen(key: PageStorageKey("Home"),),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    "Home": Icons.home,
    "Search": Icons.search,
    "Coming soon": Icons.queue_play_next,
    "Download": Icons.file_download,
    "More": Icons.menu,
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                    icon: Icon(
                      icon,
                      size: 30,
                    ),
                    label: title)))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11,
        onTap: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
    );
  }
}
