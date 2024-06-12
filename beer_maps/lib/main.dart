import 'package:beer_maps/ui/screens/homescreen.dart';
import 'package:beer_maps/ui/screens/listscreen.dart';
import 'package:beer_maps/ui/screens/mapscreen.dart';
import 'package:flutter/material.dart';
import '../ui/components/navbar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeerMaps',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('nb', ''), // Norwegian Bokmål, no country code
      ],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes : {
        '/': (context) => const ListScreen(), // This is the default route to the ListScreen
        '/list': (context) => const ListScreen(),
        '/map': (context) => const MapScreen(),
      },
      onGenerateRoute: (settings) {
        return PageRouteBuilder(
            settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
              if (settings.name == '/list') {
                return const ListScreen();
              }
              else if (settings.name == '/map') {
                return const MapScreen();
              }
              else {
                return const ListScreen();  // This is the default route to the ListScreen
              }
            },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
            },
        );
      },
    );
  }
}
