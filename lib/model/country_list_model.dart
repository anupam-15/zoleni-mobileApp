// To parse this JSON data, do
//
//     final countryListModel = countryListModelFromJson(jsonString);

import 'dart:convert';

CountryListModel countryListModelFromJson(String str) => CountryListModel.fromJson(json.decode(str));

String countryListModelToJson(CountryListModel data) => json.encode(data.toJson());

class CountryListModel {
  String result;
  List<Datum> data;

  CountryListModel({
    required this.result,
    required this.data,
  });

  factory CountryListModel.fromJson(Map<String, dynamic> json) => CountryListModel(
    result: json["result"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String sortname;
  String name;
  String phonecode;
  String active;
  String adminId;

  Datum({
    required this.id,
    required this.sortname,
    required this.name,
    required this.phonecode,
    required this.active,
    required this.adminId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    sortname: json["sortname"],
    name: json["name"],
    phonecode: json["phonecode"],
    active: json["active"],
    adminId: json["admin_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sortname": sortname,
    "name": name,
    "phonecode": phonecode,
    "active": active,
    "admin_id": adminId,
  };
}