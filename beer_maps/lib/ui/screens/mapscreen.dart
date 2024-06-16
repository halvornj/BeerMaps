import 'package:flutter/material.dart';
import '../components/navbar.dart';
import '../components/map.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BeerMaps'),
      ),
      body: Center(
        child: MyMap(),
      ),
      bottomNavigationBar: const Navbar(currentRoute: "/map"),
    );
  }
}