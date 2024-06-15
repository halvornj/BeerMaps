import 'package:beer_maps/ui/components/navbar.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});



@override
  State<ListScreen> createState() => _ListScreenState();
}
class _ListScreenState extends State<ListScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('BeerMaps'),
      ),
      body: const Center(
        child: Text('This is the List screen.'),
      ),
      bottomNavigationBar: const Navbar(currentRoute: "/list"),
    );
  }
}