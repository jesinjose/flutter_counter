import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/UserModel.dart';
import 'package:http/http.dart' as http;

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  UserModel _users = UserModel();
  bool isLoading = true;

  void getData() async {
    var url = Uri.parse('https://fluttmac.github.io/api/user.json');
    final response = await http.get(url);
    var json = jsonDecode(response.body);

    setState(() {
      _users = UserModel.fromJson(json);
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users List'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _users.data!.length,
              itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text(_users.data![index].name!)),
                      ],
                    ),
                  )),
    );
  }
}
