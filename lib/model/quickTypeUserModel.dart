// To parse this JSON data, do
//
//     final quickTypeModel = quickTypeModelFromJson(jsonString);

import 'dart:convert';

QuickTypeModel quickTypeModelFromJson(String str) =>
    QuickTypeModel.fromJson(json.decode(str));

String quickTypeModelToJson(QuickTypeModel data) => json.encode(data.toJson());

class QuickTypeModel {
  QuickTypeModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory QuickTypeModel.fromJson(Map<String, dynamic> json) => QuickTypeModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
