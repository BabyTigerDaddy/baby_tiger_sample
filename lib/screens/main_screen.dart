import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Tab1 (MATERIAL)",
            ),
            Tab(
              text: "Tab2 (CUPERTINO)",
            ),
          ],
        ),

      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
        ],
      ),
    );
  }
}