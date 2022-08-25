import 'package:flutter/material.dart';
import 'package:flutter_counter/TabLayoutPages/HomePage.dart';

import 'HomePage.dart';
import 'TabLayoutPages/FavPage.dart';
import 'TabLayoutPages/UserPage.dart';

class TabBarLayout extends StatefulWidget {
  @override
  State<TabBarLayout> createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tab ${controller.index+1} '),
          bottom: TabBar(
            controller: controller,
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Favourite',
                icon: Icon(Icons.star),
              ),
              Tab(text: 'User', icon: Icon(Icons.person))
            ],
          ),
        ),
        body:  TabBarView(
          controller: controller,
          children: [HomePageTab(), FavPage(), UserPage()],
        ),
      );
}
