import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNav extends StatefulWidget {
  const CurvedNav({Key? key}) : super(key: key);

  @override
  State<CurvedNav> createState() => _CurvedNavState();
}

class _CurvedNavState extends State<CurvedNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curved Bottom Navigation'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.white,
      ),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.white,
          color: Colors.blueGrey,
          index: 0,
          items: [
            Icon(
              Icons.home,
              color: Colors.lime,
            ),
            Icon(
              Icons.search,
              color: Colors.lime,
            ),
            Icon(
              Icons.person,
              color: Colors.lime,
            ),
            Icon(
              Icons.favorite,
              color: Colors.lime,
            )
          ]),
    );
  }
}
