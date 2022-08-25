import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_counter/API/RecipeAPI.dart';
import 'package:flutter_counter/CustomWidget/RecipeCard.dart';
import 'package:flutter_counter/Models/DataList.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  DataList recipe = DataList();
  DataList output = DataList();
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Icon(
                Icons.restaurant_menu,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Food Recipe',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Noto Sans CJK SC'),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        body: ListView.builder(
          itemCount: output.data!.length,
            itemBuilder: (context, index) => Container(
                    child: Column(
                  children: [Text(output.data![index].firstName!)],
                ))));
  }

  void recipeData() async {
    /* recipe = await RecipeAPI.getData();
    setState(() {
      print(recipe.data?.name.toString());
    });*/
    var url = Uri.parse('https://reqres.in/api/users?page=2');
    final response = await http.get(url);
    var json = jsonDecode(response.body);
    setState(() {
      isLoading = false;
      output = DataList.fromJson(json);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recipeData();
  }
}
