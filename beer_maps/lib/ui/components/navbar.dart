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
            child: FractionallySizedBox(
              heightFactor: .07,
              child: TextButton.icon(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.list, size: 30),
                label: const Text("List", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  if(widget.currentRoute != '/list') {
                    Navigator.pushNamed(context, '/list');
                  }
                },
              ),
            ),
      ),
          Expanded(
            child: FractionallySizedBox(
              heightFactor: .07,
              child: TextButton.icon(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.map, size: 30),
                label: const Text("Map", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  if(widget.currentRoute != '/map') {
                    Navigator.pushNamed(context, '/map');
                  }
                },
              ),
            ),
          )
        ],
      );
  }
}