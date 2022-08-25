import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/UserModel.dart';
import 'package:http/http.dart' as http;

class testAPI extends StatefulWidget {
  const testAPI({Key? key}) : super(key: key);

  @override
  State<testAPI> createState() => _testAPIState();
}

class _testAPIState extends State<testAPI> {
  UserModel user = UserModel();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              child: ListView.builder(
                  itemCount: user.data!.length,
                  itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [Text(user.data![index].name!)],
                        ),
                      )),
            ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async {
    var url = Uri.parse('https://fluttmac.github.io/api/user.json');
    final response = await http.get(url);
    var json = jsonDecode(response.body);

    setState(() {
      user = UserModel.fromJson(json);
      isLoading = false;
    });
  }
}
