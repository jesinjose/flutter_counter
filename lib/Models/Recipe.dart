import 'dart:convert';

// To parse this JSON data, do
//
//     final dataList = dataListFromJson(jsonString);

import 'dart:convert';

DataList dataListFromJson(String str) => DataList.fromJson(json.decode(str));

String dataListToJson(DataList data) => json.encode(data.toJson());

class DataList {
  DataList({
    this.data,
    this.support,
  });

  Data? data;
  Support? support;

  factory DataList.fromJson(Map<String, dynamic> json) => DataList(
    data: Data.fromJson(json["data"]),
    support: Support.fromJson(json["support"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "support": support?.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.name,
    this.year,
    this.color,
    this.pantoneValue,
  });

  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    year: json["year"],
    color: json["color"],
    pantoneValue: json["pantone_value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "year": year,
    "color": color,
    "pantone_value": pantoneValue,
  };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json["url"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "text": text,
  };






}

