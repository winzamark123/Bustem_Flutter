import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';
import '../pages/home/components/footer.dart';
class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Center(child: Text('Features Page')),
    Center(child: Text('FAQs Page')),
    Center(child: Text('Login Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 80, // Adjust this value to change navbar height
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: NavigationBar(
                height: 65, // Adjust this value for the actual navbar height
                onDestinationSelected: _onItemTapped,
                selectedIndex: _selectedIndex,
                destinations: const <NavigationDestination>[
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.star_outline),
                    selectedIcon: Icon(Icons.star),
                    label: 'Features',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.question_answer_outlined),
                    selectedIcon: Icon(Icons.question_answer),
                    label: 'FAQs',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.login_outlined),
                    selectedIcon: Icon(Icons.login),
                    label: 'Login',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
