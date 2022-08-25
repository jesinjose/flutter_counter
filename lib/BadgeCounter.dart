import 'package:flutter/material.dart';

class BadgeCounter extends StatefulWidget {
  const BadgeCounter({Key? key}) : super(key: key);

  @override
  State<BadgeCounter> createState() => _BadgeCounterState();
}

class _BadgeCounterState extends State<BadgeCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              addCounter();
            });
          },
        ),
        appBar: AppBar(
          actions: [
            Stack(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                Positioned(
                    top: 2,
                    right: 4,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        counter.toString(),
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ))
              ],
            )
          ],
          title: Text('Badge Counter'),
          elevation: 3,
        ),
        body: Center(
          child: Text(
            '$counter times counted',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 22, color: Colors.black),
          ),
        ),
      );

  void addCounter() {
    counter++;
  }
}
