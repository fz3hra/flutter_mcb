// To parse this JSON data, do
//
//     final getUser = getUserFromJson(jsonString);

import 'dart:convert';

class GetUser {
  final bool success;
  final String message;
  final String statusCode;
  final Data data;

  GetUser({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory GetUser.fromRawJson(String str) => GetUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetUser.fromJson(Map<String, dynamic> json) => GetUser(
        success: json["success"],
        message: json["message"],
        statusCode: json["statusCode"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "statusCode": statusCode,
        "data": data.toJson(),
      };
}

class Data {
  final String id;
  final String phoneNumber;
  final String email;
  final String token;

  Data({
    required this.id,
    required this.phoneNumber,
    required this.email,
    required this.token,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        phoneNumber: json["phoneNumber"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "phoneNumber": phoneNumber,
        "email": email,
        "token": token,
      };
}
