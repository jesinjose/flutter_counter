import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_counter/Models/Recipe.dart';
import 'package:http/http.dart' as http;

class RecipeAPI {


 static Future<DataList> getData() async {
  DataList recipe = DataList();
    var url = Uri.parse("https://reqres.in/api/unknown/2");
    final response = await http.get(url);

    var json = jsonDecode(response.body);
    return DataList.fromJson(json);
    print(json);
    print(recipe);
  }
}
