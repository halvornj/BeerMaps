import 'package:beer_maps/ui/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../data/location/locator.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key,});
@override
  State<ListScreen> createState() => _ListScreenState();
}
class _ListScreenState extends State<ListScreen> {
  Position? position;

  void _updatePosition() async {
    Position newPosition = await determinePosition();
    setState(() {
      position = newPosition;
    });
  }
  @override
  Widget build(BuildContext context) {
    _updatePosition();
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BeerMaps'),
      ),
      body: Center(
        child: Text(position?.toString() ?? "Loading..."),
      ),
      bottomNavigationBar: const Navbar(currentRoute: "/list"),
    );
  }
}