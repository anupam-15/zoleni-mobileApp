/*
// To parse this JSON data, do
//
//     final orderListModel = orderListModelFromJson(jsonString);

import 'dart:convert';

OrderListModel orderListModelFromJson(String str) => OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
  String status;
  Data data;
  String err;

  OrderListModel({
    required this.status,
    required this.data,
    required this.err,
  });

  factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
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
  List<Order> data;
  String total;

  Data({
    required this.data,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<Order>.from(json["data"].map((x) => Order.fromJson(x))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class Order {
  String id;
  String orderId;
  DateTime orderDate;
  String type;
  DateTime pickupDate;
  String pickupTime;
  String pickupTimeTo;
  DateTime dropoffDate;
  dynamic dropoffTime;
  String timeOfDay;
  String day;
  String status;
  String statusDate;
  String chatRefid;
  String userId;
  dynamic userEmail;
  dynamic userName;
  dynamic userNote;
  dynamic userNoteFor;
  String ip;
  String active;
  String action;
  String assigned;
  String completed;
  String problem;
  String deliveredbyDriverId;
  DateTime postdate;
  dynamic businesspage;
  dynamic year;
  dynamic month;
  String red;

  Order({
    required this.id,
    required this.orderId,
    required this.orderDate,
    required this.type,
    required this.pickupDate,
    required this.pickupTime,
    required this.pickupTimeTo,
    required this.dropoffDate,
    required this.dropoffTime,
    required this.timeOfDay,
    required this.day,
    required this.status,
    required this.statusDate,
    required this.chatRefid,
    required this.userId,
    required this.userEmail,
    required this.userName,
    required this.userNote,
    required this.userNoteFor,
    required this.ip,
    required this.active,
    required this.action,
    required this.assigned,
    required this.completed,
    required this.problem,
    required this.deliveredbyDriverId,
    required this.postdate,
    required this.businesspage,
    required this.year,
    required this.month,
    required this.red,
  });

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    orderId: json["order_id"],
    orderDate: DateTime.parse(json["order_date"]),
    type: json["type"],
    pickupDate: DateTime.parse(json["pickup_date"]),
    pickupTime: json["pickup_time"],
    pickupTimeTo: json["pickup_time_to"],
    dropoffDate: DateTime.parse(json["dropoff_date"]),
    dropoffTime: json["dropoff_time"],
    timeOfDay: json["time_of_day"],
    day: json["day"],
    status: json["status"],
    statusDate: json["status_date"],
    chatRefid: json["chat_refid"],
    userId: json["user_id"],
    userEmail: json["user_email"],
    userName: json["user_name"],
    userNote: json["user_note"],
    userNoteFor: json["user_note_for"],
    ip: json["ip"],
    active: json["active"],
    action: json["action"],
    assigned: json["assigned"],
    completed: json["completed"],
    problem: json["problem"],
    deliveredbyDriverId: json["deliveredby_driver_id"],
    postdate: DateTime.parse(json["postdate"]),
    businesspage: json["businesspage"],
    year: json["year"],
    month: json["month"],
    red: json["red"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order_id": orderId,
    "order_date": orderDate.toIso8601String(),
    "type": type,
    "pickup_date": "${pickupDate.year.toString().padLeft(4, '0')}-${pickupDate.month.toString().padLeft(2, '0')}-${pickupDate.day.toString().padLeft(2, '0')}",
    "pickup_time": pickupTime,
    "pickup_time_to": pickupTimeTo,
    "dropoff_date": "${dropoffDate.year.toString().padLeft(4, '0')}-${dropoffDate.month.toString().padLeft(2, '0')}-${dropoffDate.day.toString().padLeft(2, '0')}",
    "dropoff_time": dropoffTime,
    "time_of_day": timeOfDay,
    "day": day,
    "status": status,
    "status_date": statusDate,
    "chat_refid": chatRefid,
    "user_id": userId,
    "user_email": userEmail,
    "user_name": userName,
    "user_note": userNote,
    "user_note_for": userNoteFor,
    "ip": ip,
    "active": active,
    "action": action,
    "assigned": assigned,
    "completed": completed,
    "problem": problem,
    "deliveredby_driver_id": deliveredbyDriverId,
    "postdate": postdate.toIso8601String(),
    "businesspage": businesspage,
    "year": year,
    "month": month,
    "red": red,
  };
}
*/


// To parse this JSON data, do
//
//     final orderListModel = orderListModelFromJson(jsonString);

import 'dart:convert';

OrderListModel orderListModelFromJson(String str) => OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
  String status;
  Data data;
  String err;

  OrderListModel({
    required this.status,
    required this.data,
    required this.err,
  });

  factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
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
  List<Map<String, String?>> data;
  String total;

  Data({
    required this.data,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<Map<String, String?>>.from(json["data"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    "total": total,
  };
}
