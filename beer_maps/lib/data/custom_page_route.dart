import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder{
  final Widget child;

  CustomPageRoute({
    required this.child,
    super.settings,
  }) : super(
    transitionDuration: const Duration(seconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => child,
  );

      @override
      Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
          ScaleTransition(scale: animation, child: child);
}