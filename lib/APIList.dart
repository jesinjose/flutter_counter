import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/DataList.dart';
import 'package:http/http.dart' as http;

class APIList extends StatefulWidget {
  const APIList({Key? key}) : super(key: key);

  @override
  State<APIList> createState() => _APIListState();
}

class _APIListState extends State<APIList> {
  DataList list = DataList();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: list.data!.length,
              itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [Text(list.data![index].firstName!),Image.network(list.data![index].avatar!)],
                    ),
                  )),
    );
  }

  void getData() async {
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    final response = await http.get(url);

    var json = jsonDecode(response.body);

    setState(() {
      list = DataList.fromJson(json);
      isLoading = false;
    });

    /*await Future.delayed(Duration(seconds: 4), () {
      print('1');
    });
    print('2');*/
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
}
