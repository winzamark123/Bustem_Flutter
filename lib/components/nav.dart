import 'package:flutter/material.dart';

class NavItem {
  final String label;
  final String sectionKey;

  const NavItem({required this.label, required this.sectionKey});
}

const List<NavItem> navItems = <NavItem>[
  NavItem(label: 'Home', sectionKey: 'home'),
  NavItem(label: 'Features', sectionKey: 'features'),
  NavItem(label: 'FAQs', sectionKey: 'faqs'),
  NavItem(label: 'Login', sectionKey: 'login'),
];

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;
  final Map<String, GlobalKey> sectionKeys;
  final ScrollController scrollController;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    required this.sectionKeys,
    required this.scrollController,
  });

  void scrollToSection(String sectionKey, int index) {
    final GlobalKey? key = sectionKeys[sectionKey];
    if (key?.currentContext != null) {
      final RenderBox box =
          key!.currentContext!.findRenderObject() as RenderBox;
      final double position = box.localToGlobal(Offset.zero).dy;

      // Subtract the navbar height to account for the fixed position
      final double offset = position - 80;

      scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
    onItemTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                // Logo section
                const Row(
                  children: <Widget>[
                    FlutterLogo(size: 32),
                    SizedBox(width: 8),
                    Text(
                      'Bustem',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Navigation items
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: navItems
                      .asMap()
                      .entries
                      .map<Widget>((MapEntry<int, NavItem> entry) => _NavItem(
                            label: entry.value.label,
                            isSelected: selectedIndex == entry.key,
                            onTap: () => scrollToSection(
                              entry.value.sectionKey,
                              entry.key,
                            ),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey[200] : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey[600],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
