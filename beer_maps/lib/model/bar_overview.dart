import 'dart:ffi';

import 'package:beer_maps/model/price.dart';
import 'package:flutter/cupertino.dart';

final class BarOverview{
  Icon icon;
  String barName;
  Price price;

  BarOverview({required this.icon, required this.barName, required this.price});

}