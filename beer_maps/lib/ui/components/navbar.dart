import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final Function(int) onDestinationSelected;
  final int currentPageIndex;

  Navbar({required this.onDestinationSelected, required this.currentPageIndex});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.currentPageIndex,
      onDestinationSelected: (int index) {
        widget.onDestinationSelected(index);
      },
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        NavigationDestination(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
      ],
    );
  }
}