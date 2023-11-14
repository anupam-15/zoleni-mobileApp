// To parse this JSON data, do
//
//     final profileResponseModel = profileResponseModelFromJson(jsonString);

import 'dart:convert';

ProfileResponseModel profileResponseModelFromJson(String str) => ProfileResponseModel.fromJson(json.decode(str));

String profileResponseModelToJson(ProfileResponseModel data) => json.encode(data.toJson());

class ProfileResponseModel {
  String result;
  Data data;

  ProfileResponseModel({
    required this.result,
    required this.data,
  });

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) => ProfileResponseModel(
    result: json["result"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "data": data.toJson(),
  };
}

class Data {
  String id;
  String type;
  String fname;
  String lname;
  String gender;
  String dob;
  String image;
  String country;
  String state;
  String city;

  Data({
    required this.id,
    required this.type,
    required this.fname,
    required this.lname,
    required this.gender,
    required this.dob,
    required this.image,
    required this.country,
    required this.state,
    required this.city,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    type: json["type"],
    fname: json["fname"],
    lname: json["lname"],
    gender: json["gender"],
    dob: json["dob"],
    image: json["image"],
    country: json["country"],
    state: json["state"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "fname": fname,
    "lname": lname,
    "gender": gender,
    "dob": dob,
    "image": image,
    "country": country,
    "state": state,
    "city": city,
  };
}
