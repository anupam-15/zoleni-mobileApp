// To parse this JSON data, do
//
//     final ResponseModel = ResponseModelFromJson(jsonString);

import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
  dynamic result;
  String msg;

  ResponseModel({
    required this.result,
    required this.msg,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
    result: json["result"],
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "msg": msg,
  };
}
