import 'package:flutter/material.dart';
import 'package:flutter_counter/CollapseToolbar.dart';
import 'package:flutter_counter/SearchBar.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'BottomnavigationBar.dart';
import 'CurvedNav.dart';
import 'PageView.dart';
import 'SideNavigationDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<String> data = [
    'Login',
    'Register',
    'TabBarView',
    'ListView',
    'Cart Icon Counter',
    'Navigation Bar',
    'Bottom Navigation',
    'Curved Bottom Navigation',
    'Collapse Toolbar',
    'Toolbar Search',
    'View Pager'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Card(
              child: ListTile(
                title: Text(data[index]),
                onTap: () {
                  checkCondition(index);
                },
              ),
            ),
          ),
          itemCount: data.length,
        ),
      );

  void checkCondition(int index) {
    switch (data[index]) {
      case 'Login':
        Navigator.pushNamed(context, 'login');
        break;
      case 'Register':
        {
          Navigator.pushNamed(context, 'register');
          break;
        }
      case 'TabBarView':
        {
          Navigator.pushNamed(context, 'tabBar');
          break;
        }
      case 'ListView':
        {
          Navigator.pushNamed(context, '/DataPage');
          break;
        }
      case 'Cart Icon Counter':
        {
          Navigator.pushNamed(context, 'shoppingCounter');
          break;
        }
      case 'Navigation Bar':
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NavigationDrawerPage()));
          break;
        }
      case 'Bottom Navigation':
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNav()));
          break;
        }
      case 'Curved Bottom Navigation':
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CurvedNav()));
          break;
        }
      case 'Collapse Toolbar':
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CollapseToolbar()));
          break;
        }
      case 'Toolbar Search':
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SearchBar()));
          break;
        }
      case 'View Pager':
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SliderPage()));
        }
    }
  }
}
