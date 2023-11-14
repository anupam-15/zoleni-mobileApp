// To parse this JSON data, do
//
//     final packageResponseModel = packageResponseModelFromJson(jsonString);

import 'dart:convert';

PackageResponseModel packageResponseModelFromJson(String str) => PackageResponseModel.fromJson(json.decode(str));

String packageResponseModelToJson(PackageResponseModel data) => json.encode(data.toJson());

class PackageResponseModel {
  String status;
  Data data;
  String err;

  PackageResponseModel({
    required this.status,
    required this.data,
    required this.err,
  });

  factory PackageResponseModel.fromJson(Map<String, dynamic> json) => PackageResponseModel(
    status: json["status"],
    data: Data.fromJson(json["data"]),
    err: json["err"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
    "err": err,
  };
}

class Data {
  List<PackageData> data;
  String total;

  Data({
    required this.data,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<PackageData>.from(json["data"].map((x) => PackageData.fromJson(x))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class PackageData {
  String id;
  String name;
  String boxNumber;
  String height;
  String width;
  String length;
  String details;
  dynamic grade;
  dynamic longBeforeNotificationToDriver;
  String active;
  DateTime postdate;

  PackageData({
    required this.id,
    required this.name,
    required this.boxNumber,
    required this.height,
    required this.width,
    required this.length,
    required this.details,
    required this.grade,
    required this.longBeforeNotificationToDriver,
    required this.active,
    required this.postdate,
  });

  factory PackageData.fromJson(Map<String, dynamic> json) => PackageData(
    id: json["id"],
    name: json["name"],
    boxNumber: json["box_number"],
    height: json["height"],
    width: json["width"],
    length: json["length"],
    details: json["details"],
    grade: json["grade"],
    longBeforeNotificationToDriver: json["long_before_notification_to_driver"],
    active: json["active"],
    postdate: DateTime.parse(json["postdate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "box_number": boxNumber,
    "height": height,
    "width": width,
    "length": length,
    "details": details,
    "grade": grade,
    "long_before_notification_to_driver": longBeforeNotificationToDriver,
    "active": active,
    "postdate": postdate.toIso8601String(),
  };
}
