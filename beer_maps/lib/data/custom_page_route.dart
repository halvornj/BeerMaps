import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder{
  final Widget child;

  CustomPageRoute({
    required this.child,
    super.settings,
  }) : super(
    transitionDuration: const Duration(milliseconds: 100),
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => child,
  );

      @override
      Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        /*
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
         */
        return FadeTransition(opacity: animation, child: child,);
      }
}