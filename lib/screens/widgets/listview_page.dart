import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:baby_tiger_sample/screens/main_screen.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPage();
}

class _ListViewPage extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        children: const <Widget>[
          Card(child: ListTile(title: Text('One-line ListTile'))),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with leading widget'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line with trailing widget'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('One-line with both widgets'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('One-line dense ListTile'),
              dense: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line ListTile'),
              subtitle: Text('Here is a second line'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text('Three-line ListTile'),
              subtitle: Text(
                  'A sufficiently long subtitle warrants three lines.'
              ),
              trailing: Icon(Icons.more_vert),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}