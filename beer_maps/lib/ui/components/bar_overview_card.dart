import 'package:beer_maps/model/bar_overview.dart';
import 'package:flutter/material.dart';

class BarOverviewCard extends StatelessWidget{
  final BarOverview bar;
  const BarOverviewCard({super.key, required this.bar});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          bar.icon,
          Column(
            children: <Widget>[
              Text(bar.barName),
              Text(bar.price.toString()) //todo add currency
            ],
          ),
          Column(
            children: <Widget>[
              MaterialButton(
                child: const Text("Details"),
                onPressed: () {
                    //TODO
                },
              )
            ],
          ),
        ],
      ),
    );
  }


}