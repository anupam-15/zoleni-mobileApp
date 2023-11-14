// To parse this JSON data, do
//
//     final paymentMethodModel = paymentMethodModelFromJson(jsonString);

import 'dart:convert';

List<PaymentMethodModel> paymentMethodModelFromJson(String str) => List<PaymentMethodModel>.from(json.decode(str).map((x) => PaymentMethodModel.fromJson(x)));

String paymentMethodModelToJson(List<PaymentMethodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PaymentMethodModel {
  int id;
  String name;
  String assets;

  PaymentMethodModel({
    required this.id,
    required this.name,
    required this.assets,
  });

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) => PaymentMethodModel(
    id: json["id"],
    name: json["name"],
    assets: json["assets"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "assets": assets,
  };
}
