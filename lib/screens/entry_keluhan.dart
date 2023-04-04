import 'package:flutter/material.dart';

class EntryKeluhan extends StatefulWidget {
  static const routeName = '/entry-keluhan';

  // final Function addTx;

  // NewTransaction(this.addTx);

  @override
  State<EntryKeluhan> createState() => _EntryKelurahanState();
}

class _EntryKelurahanState extends State<EntryKeluhan> {
  void submitData() {
    final enteredBlockNomor = blockNomorController.text;
    final enteredLokasi = lokasiController.text;
    final enteredKeluhan = keluhanController.text;

    if (enteredBlockNomor.isEmpty ||
        enteredLokasi.isEmpty ||
        enteredKeluhan.isEmpty) {
      return;
    }

    // widget.addTx(
    //   enteredBlockNomor,
    //   enteredLokasi,
    //   enteredKeluhan,
    // );

    Navigator.of(context).pop();
  }

  final blockNomorController = TextEditingController();

  final lokasiController = TextEditingController();

  final keluhanController = TextEditingController();

  List lokasi = ['Ruang Tamu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Entry Keluhan'),
        ),
        body: Column(children: <Widget>[
          DropdownButtonFormField(
            decoration: InputDecoration(labelText: 'Blok Nomor'),
            // controller: blockNomorController,
            // onSubmitted: (_) => submitData(),
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(labelText: 'Lokasi'),
            // controller: lokasiController,
            // onSubmitted: (_) => submitData(),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Keluhan'),
            controller: keluhanController,
            onSubmitted: (_) => submitData(),
          ),
          TextButton(
            child: Text('Submit'),
            onPressed: submitData,
            style: TextButton.styleFrom(foregroundColor: Colors.cyanAccent),
          )
        ]));
  }
}
