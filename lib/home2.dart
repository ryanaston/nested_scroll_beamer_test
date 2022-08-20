import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nested_scroll_beamer_test/list.dart';

class Home2Screen extends StatelessWidget {
  Home2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              title: Row(children: [Text('Testing')]),
            ),
          ];
        },
        body: Beamer(
          routerDelegate: BeamerDelegate(
            locationBuilder: RoutesLocationBuilder(
              routes: {
                '/2': (context, state, data) => ListScreen(),
              },
            ),
          ),
        ),
      ),
    );
  }
}
