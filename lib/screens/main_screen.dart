import 'package:baby_tiger_sample/screens/cupertino_screen.dart';
import 'package:baby_tiger_sample/screens/material_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              tooltip: "open drawer",
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            title: const Text('App bar'),
            actions: [
              IconButton(
                icon: const Icon(Icons.add_alert),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is a snackbar')));
                },
              ),
              PopupMenuButton<Text>(
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(
                        child: Text(
                          "First",
                        ),
                      ),
                      const PopupMenuItem(
                        child: Text(
                          "Second",
                        ),
                      ),
                    ];
                  }
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Tab1 (MATERIAL)",
                ),
                Tab(
                  text: "Tab2 (CUPERTINO)",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MaterialScreen(),
              CupertinoScreen(),
            ],
          ),
        ),
      ),
    );
  }
}