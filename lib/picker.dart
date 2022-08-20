import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class PickerScreen extends StatelessWidget {
  PickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Desired behavior (achieved without beamer):\n\nAs I begin to scroll down the ListView, the SliverAppBar shrinks off-screen.\n\nAs I scroll upwards the SliverAppBar immediately scrolls back into view.'),
            SizedBox.square(
              dimension: 20,
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/1');
              },
              child: Text('Click to view desired behavior'),
            ),
            SizedBox.square(
              dimension: 50,
            ),
            Text(
                'Observed behavior (induced by wrapping the ListView with a beamer):\n\nThe SliverAppBar remains in view until I scroll to the very bottom of the ListView.\n\nThe SliverAppBar does not return until I scroll to the top of the ListView.'),
            SizedBox.square(
              dimension: 20,
            ),
            TextButton(
              onPressed: () {
                Beamer.of(context).beamToNamed('/2');
              },
              child: Text('Click to view observed behavior'),
            ),
          ],
        ),
      ),
    );
  }
}
