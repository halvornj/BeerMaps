import 'dart:ffi';

import 'package:beer_maps/model/price.dart';
import 'package:flutter/cupertino.dart';

final class Bar{
  Icon icon;
  String barName;
  Price price;
  Uri image;

  Bar({required this.icon, required this.barName, required this.price, required this.image});

}