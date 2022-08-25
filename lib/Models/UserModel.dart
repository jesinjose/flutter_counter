import 'package:flutter/material.dart';

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));


class UserModel {
  UserModel({
    this.data,
  });

  List<User>? data;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
      );


}

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.profession,
  });

  int? id;
  String? name;
  String? email;
  String? profession;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        profession: json["profession"],
      );

}
