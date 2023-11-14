// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
  String result;
  String msg;
  String userId;
  String userRefid;
  String userType;
  String userEmail;
  String userName;

  LoginResponseModel({
    required this.result,
    required this.msg,
    required this.userId,
    required this.userRefid,
    required this.userType,
    required this.userEmail,
    required this.userName,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    result: json["result"],
    msg: json["msg"],
    userId: json["user_id"]==null ? '' : json["user_id"],
    userRefid: json["user_refid"]==null ? '' : json["user_refid"],
    userType: json["user_type"]==null ? '' : json["user_type"],
    userEmail: json["user_email"]==null ? '' : json["user_email"],
    userName: json["user_name"]==null ? '' : json["user_name"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "msg": msg,
    "user_id": userId,
    "user_refid": userRefid,
    "user_type": userType,
    "user_email": userEmail,
    "user_name": userName,
  };
}
