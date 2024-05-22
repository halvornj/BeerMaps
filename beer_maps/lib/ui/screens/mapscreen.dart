import 'package:flutter/material.dart';

import '../components/navbar.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text('This is the map screen.'),
      ),
      bottomNavigationBar: FractionallySizedBox(heightFactor: 0.07, child: Navbar(currentRoute: "/map")),
    );
  }
}