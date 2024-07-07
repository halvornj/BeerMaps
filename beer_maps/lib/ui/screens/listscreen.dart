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
  String positionStr = "Loading...";
  //todo try to get this from session, if not THEN get from locator like this. essentially we wanna cache, duh

  void _updatePosition() async {
    Position position = await determinePosition();
    setState(() {
      positionStr = "Lat: ${position.latitude}, Long: ${position.longitude}";
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
        child: Text(positionStr),
      ),
      bottomNavigationBar: const Navbar(currentRoute: "/list"),
    );
  }
}