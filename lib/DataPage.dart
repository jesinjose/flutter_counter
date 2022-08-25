import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/DataList.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  DataList data = DataList();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data List'),
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: data.data!.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    print(data.data![index].firstName);
                    Fluttertoast.showToast(
                        msg: data.data![index].firstName.toString(),
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(data.data![index].avatar!),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      data.data![index].firstName!,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'RobotoMono'),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(5, 0, 0, 5)),
                                    Text(data.data![index].lastName!,
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'RobotoMono')),
                                  ],
                                ),
                              ),
                              Text(data.data![index].email!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'RobotoMono'))
                            ],
                          ),
                        ),
                      ),
                )),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAPI();
  }

  void getAPI() async {
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    final response = await http.get(url);
    var json = jsonDecode(response.body);
    setState(() {
      isLoading = false;
      data = DataList.fromJson(json);
    });
  }
}
