import 'package:flutter/material.dart';
import 'package:flutter_counter/CustomWidgets/CardWidget.dart';
import 'package:flutter_counter/Models/ItemModels.dart';

class SecondActivity extends StatefulWidget {
  const SecondActivity({Key? key}) : super(key: key);

  @override
  State<SecondActivity> createState() => _SecondActivityState();
}

class _SecondActivityState extends State<SecondActivity> {
  List<ItemModels> list = [
    ItemModels('Jesin Jose', 'Palakkad'),
    ItemModels('Vishal', 'Thodupuzha')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Activity'),
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu,color: Colors.white,),
            tooltip: 'Navigation Menu',
          ),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: list
                .map((data) => CardWidget(data, () {
                      setState(() {
                        list.remove(data);
                      });
                    }))
                .toList(),
          ),
        ));
  }

  removeData(data) {
    setState(() {
      list.remove(data);
    });
  }
}
