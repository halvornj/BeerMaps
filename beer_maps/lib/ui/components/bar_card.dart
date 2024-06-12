import 'package:beer_maps/model/bar.dart';
import 'package:flutter/material.dart';

class BarCard extends StatelessWidget{
  final Bar bar;
  const BarCard({super.key, required this.bar});

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
                child: const Text("Show in map"),
                onPressed: () {
                    //TODO
                },
              ),
              MaterialButton(
                child: const Text("Edit"),
                  onPressed: (){
                    //TODO
                }
              )
            ],
          ),
        ],
      ),
    );
  }


}