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
    return const Scaffold(

      body: Center(
        child: Text('This is the List screen.'),
      ),
      bottomNavigationBar: FractionallySizedBox(heightFactor: 0.07, child: Navbar(currentRoute: "/list")),
    );
  }
}