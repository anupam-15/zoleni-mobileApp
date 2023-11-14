// To parse this JSON data, do
//
//     final promoCodeResponseModel = promoCodeResponseModelFromJson(jsonString);

import 'dart:convert';

PromoCodeResponseModel promoCodeResponseModelFromJson(String str) => PromoCodeResponseModel.fromJson(json.decode(str));

String promoCodeResponseModelToJson(PromoCodeResponseModel data) => json.encode(data.toJson());

class PromoCodeResponseModel {
  String status;
  Data data;
  String err;

  PromoCodeResponseModel({
    required this.status,
    required this.data,
    required this.err,
  });

  factory PromoCodeResponseModel.fromJson(Map<String, dynamic> json) => PromoCodeResponseModel(
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
  List<PromoCode> data;
  String total;

  Data({
    required this.data,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<PromoCode>.from(json["data"].map((x) => PromoCode.fromJson(x))),
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "total": total,
  };
}

class PromoCode {
  String id;
  Name name;
  String code;
  String amount;
  String balance;
  Type type;
  String active;
  DateTime postdate;
  DateFrom dateFrom;
  DateTo dateTo;
  String adminId;

  PromoCode({
    required this.id,
    required this.name,
    required this.code,
    required this.amount,
    required this.balance,
    required this.type,
    required this.active,
    required this.postdate,
    required this.dateFrom,
    required this.dateTo,
    required this.adminId,
  });

  factory PromoCode.fromJson(Map<String, dynamic> json) => PromoCode(
    id: json["id"],
    name: nameValues.map[json["name"]]!,
    code: json["code"],
    amount: json["amount"],
    balance: json["balance"],
    type: typeValues.map[json["type"]]!,
    active: json["active"],
    postdate: DateTime.parse(json["postdate"]),
    dateFrom: dateFromValues.map[json["date_from"]]!,
    dateTo: dateToValues.map[json["date_to"]]!,
    adminId: json["admin_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameValues.reverse[name],
    "code": code,
    "amount": amount,
    "balance": balance,
    "type": typeValues.reverse[type],
    "active": active,
    "postdate": postdate.toIso8601String(),
    "date_from": dateFromValues.reverse[dateFrom],
    "date_to": dateToValues.reverse[dateTo],
    "admin_id": adminId,
  };
}

enum DateFrom {
  THE_05252023
}

final dateFromValues = EnumValues({
  "05/25/2023": DateFrom.THE_05252023
});

enum DateTo {
  THE_11302025
}

final dateToValues = EnumValues({
  "11/30/2025": DateTo.THE_11302025
});

enum Name {
  PROMOTIONAL_CODES
}

final nameValues = EnumValues({
  "Promotional Codes": Name.PROMOTIONAL_CODES
});

enum Type {
  PROMO
}

final typeValues = EnumValues({
  "promo": Type.PROMO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
