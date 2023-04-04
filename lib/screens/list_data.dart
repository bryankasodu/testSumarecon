import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  static const routeName = '/list-data';

  // final Function addTx;

  // NewTransaction(this.addTx);

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Data'),
        ),
        body: Column(children: <Widget>[]));
  }
}
