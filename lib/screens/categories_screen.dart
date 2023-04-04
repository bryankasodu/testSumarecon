import 'package:flutter/material.dart';

import '../screens/entry_keluhan.dart';
import '../screens/list_data.dart';
import 'package:flutter/services.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  // Function addNew() {}

  void selectEntryKeluhan(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(EntryKeluhan.routeName);
  }

  void selectListData(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ListData.routeName);
  }

  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Material(
          color: Colors.teal[100],
          child: InkWell(
            onTap: () {
              print('1 was clicked');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Manipulasi Elemen'),
            ),
          ),
        ),
        Material(
          color: Colors.teal[200],
          child: InkWell(
            onTap: () {
              selectListData(context);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('List Data'),
            ),
          ),
        ),
        Material(
          color: Colors.teal[300],
          child: InkWell(
            onTap: () {
              selectEntryKeluhan(context);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Entry Keluhan'),
            ),
          ),
        ),
        Material(
          color: Colors.teal[300],
          child: InkWell(
            onTap: () {
              SystemNavigator.pop();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Keluar Aplikasi'),
            ),
          ),
        ),
      ],
    );
  }
}
