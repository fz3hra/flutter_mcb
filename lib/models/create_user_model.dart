// To parse this JSON data, do
//
//     final createUser = createUserFromJson(jsonString);

import 'dart:convert';

class CreateUser {
  final bool success;
  final String message;
  final String statusCode;
  final Data data;

  CreateUser({
    required this.success,
    required this.message,
    required this.statusCode,
    required this.data,
  });

  factory CreateUser.fromRawJson(String str) =>
      CreateUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateUser.fromJson(Map<String, dynamic> json) => CreateUser(
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
  final String email;
  final String token;

  Data({
    required this.id,
    required this.email,
    required this.token,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "token": token,
      };
}
