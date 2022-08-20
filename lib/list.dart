import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getTiles(40),
    );
  }

  List<ListTile> _getTiles(int count) {
    final List<ListTile> list = [];

    for (int i = 0; i < count; i++) {
        list.add(ListTile(
          title: Text('Testing $i'),
        ));
    }

    return list;
  }
}
