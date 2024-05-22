import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key, required this.currentRoute});

final String? currentRoute;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children:<Widget>[
          Expanded(
            child: TextButton.icon(
              icon: const Icon(Icons.list),
              label: const Text("List"),
              onPressed: () {
                if(widget.currentRoute != '/list') {
                  Navigator.pushNamed(context, '/list');
                }
              },
            ),
          ),
          Expanded(
            child: TextButton.icon(
              icon: const Icon(Icons.map),
              label: const Text("Map"),
              onPressed: () {
                if(widget.currentRoute != '/map') {
                  Navigator.pushNamed(context, '/map');
                }
              },
            ),
          )
        ],
      );
  }
}