import 'package:flutter/material.dart';
import 'package:flutter_counter/LoginPage.dart';
import 'package:flutter_counter/Navigation%20Drawer%20Items/DrawerItems.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 1,
                height: 40,
                color: Colors.grey,
              ),
              DrawerItems(
                  name: 'Home',
                  iconData: Icons.home_outlined,
                  onPressed: () => onItemPressed(context, index: 0)),
              Divider(),
              DrawerItems(
                  name: 'Profile',
                  iconData: Icons.person_outline,
                  onPressed: () => onItemPressed(context, index: 0)),
              Divider(),
              DrawerItems(
                  name: 'Search',
                  iconData: Icons.search,
                  onPressed: () => onItemPressed(context, index: 0)),
              Divider(),
              DrawerItems(
                  name: 'Fav',
                  iconData: Icons.favorite_border,
                  onPressed: () => onItemPressed(context, index: 0))
            ],
          ),
        ),
      ),
    );
  }

  onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
        break;
    }
  }

  Widget headerWidget() {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/men_pic.jpg'),
          ),
          SizedBox(
            width: 10,
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [Text('Person Name'), Text('EmailID')],
            ),
          )
        ],
      ),
    );
  }
}
