import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';
import './nav.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = <String, GlobalKey>{
    'home': GlobalKey(),
    'features': GlobalKey(),
    'faqs': GlobalKey(),
    'login': GlobalKey(),
  };

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: (int index) => setState(() => _selectedIndex = index),
            sectionKeys: _sectionKeys,
            scrollController: _scrollController,
          ),
          Expanded(
            child: HomePage(
              scrollController: _scrollController,
              sectionKeys: _sectionKeys,
            ),
          ),
        ],
      ),
    );
  }
}
