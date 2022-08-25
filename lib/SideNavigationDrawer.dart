import 'package:flutter/material.dart';

import 'Navigation Drawer Items/NavigationDrawer.dart';

class NavigationDrawerPage extends StatefulWidget {
  const NavigationDrawerPage({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerPage> createState() => _NavigationDrawerPageState();
}

class _NavigationDrawerPageState extends State<NavigationDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: const NavigationDrawer(),
      body: Builder(
        builder: (context) {
          return Center(
            child: ElevatedButton.icon(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.file_copy),
                label: Text('Click here to open drawer')),
          );
        }
      ),
    );
  }
}
