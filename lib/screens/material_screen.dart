import 'dart:io';

import 'package:baby_tiger_sample/screens/widgets/listview_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:baby_tiger_sample/screens/main_screen.dart';

class MaterialScreen extends StatefulWidget {
  const MaterialScreen({super.key});

  @override
  State<MaterialScreen> createState() => _MaterialScreen();
}

class _MaterialScreen extends State<MaterialScreen> {

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: const Icon(
              Icons.list,
              color: Colors.blue,
              size: 32.0,
            ),
            title: const Text('ListView'),
            subtitle: const Text('ListView widget'),
            trailing: const Icon(Icons.more_vert),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListViewPage()));
            },
          ),
        ),
        /*
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
         */
      ],
    );
  }
}