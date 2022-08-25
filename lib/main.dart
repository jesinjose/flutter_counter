import 'package:flutter/material.dart';
import 'package:flutter_counter/APIList.dart';
import 'package:flutter_counter/DataPage.dart';
import 'package:flutter_counter/FoodList.dart';
import 'package:flutter_counter/HomePage.dart';
import 'package:flutter_counter/LoginPage.dart';
import 'package:flutter_counter/MainActivity.dart';
import 'package:flutter_counter/Register.dart';
import 'package:flutter_counter/SecondActivity.dart';
import 'package:flutter_counter/SideNavigationDrawer.dart';
import 'package:flutter_counter/TabBarLayout.dart';
import 'package:flutter_counter/UserList.dart';
import 'package:flutter_counter/testAPI.dart';

import 'BadgeCounter.dart';
import 'BottomnavigationBar.dart';
import 'CurvedNav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homePage',
    routes: {
      '/home': (context) => MainActivity(),
      '/second': (context) => SecondActivity(),
      '/list': (context) => UsersList(),
      '/test': (context) => testAPI(),
      '/DataPage': (context) => DataPage(),
      '/APIList': (context) => APIList(),
      '/FoodList': (context) => FoodList(),
      'homePage': (context) => HomePage(),
      'login': (context) => LoginPage(),
      'register': (context) => MyRegister(),
      'tabBar': (context) => TabBarLayout(),
      'shoppingCounter': (context) => BadgeCounter(),
      'navigationDrawer': (context) => NavigationDrawerPage(),
      'bottom_nav': (context) => BottomNav(),
      'CurvedNav': (context) => CurvedNav(),
    },
  ));
}
/*void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => MainActivity(),
      '/second': (context) => SecondActivity()
    },
  ));
}*/
