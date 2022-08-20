import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nested_scroll_beamer_test/home1.dart';
import 'package:nested_scroll_beamer_test/home2.dart';
import 'package:nested_scroll_beamer_test/picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) => PickerScreen(),
        '/1': (context, state, data) => Home1Screen(),
        '/2': (context, state, data) => Home2Screen(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}
