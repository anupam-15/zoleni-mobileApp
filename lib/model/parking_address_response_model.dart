// To parse this JSON data, do
//
//     final parkingAddressResponseModel = parkingAddressResponseModelFromJson(jsonString);

import 'dart:convert';

ParkingAddressResponseModel parkingAddressResponseModelFromJson(String str) => ParkingAddressResponseModel.fromJson(json.decode(str));

String parkingAddressResponseModelToJson(ParkingAddressResponseModel data) => json.encode(data.toJson());

class ParkingAddressResponseModel {
  String status;
  Data data;
  String err;

  ParkingAddressResponseModel({
    required this.status,
    required this.data,
    required this.err,
  });

  factory ParkingAddressResponseModel.fromJson(Map<String, dynamic> json) => ParkingAddressResponseModel(
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
  List<AddressResponse> data;
  String total;

  Data({
    required this.data,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<AddressResponse>.from(json["data"].map((x) => AddressResponse.fromJson(x))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class AddressResponse {
  String id;
  String address;
  String details;
  String userId;
  DateTime postdate;

  AddressResponse({
    required this.id,
    required this.address,
    required this.details,
    required this.userId,
    required this.postdate,
  });

  factory AddressResponse.fromJson(Map<String, dynamic> json) => AddressResponse(
    id: json["id"],
    address: json["address"],
    details: json["details"],
    userId: json["user_id"],
    postdate: DateTime.parse(json["postdate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "address": address,
    "details": details,
    "user_id": userId,
    "postdate": postdate.toIso8601String(),
  };
}
