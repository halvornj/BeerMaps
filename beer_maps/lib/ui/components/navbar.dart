import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Navbar extends StatefulWidget {
  const Navbar({super.key, required this.currentRoute});

final String? currentRoute;

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children:<Widget>[
          Expanded(
            child: FractionallySizedBox(
              heightFactor: .07,
              child: TextButton.icon(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.list, size: 30),
                label:  Text(AppLocalizations.of(context)!.listTab, style: const TextStyle(fontSize: 20)),
                onPressed: () {
                  if(widget.currentRoute != '/') {
                    Navigator.pushNamed(context, '/');
                  }
                },
              ),
            ),
      ),
          Expanded(
            child: FractionallySizedBox(
              heightFactor: .07,
              child: TextButton.icon(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                icon: const Icon(Icons.map, size: 30),
                label: Text(AppLocalizations.of(context)!.mapTab, style: const TextStyle(fontSize: 20)),
                onPressed: () {
                  if(widget.currentRoute != '/map') {
                    Navigator.pushNamed(context, '/map');
                  }
                },
              ),
            ),
          )
        ],
      );
  }
}