import 'package:flutter/material.dart';
import '../components/navbar.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: MapWidget(),
      ),
      bottomNavigationBar: const FractionallySizedBox(heightFactor: 0.07, child: Navbar(currentRoute: "/map")),
    );
  }
}