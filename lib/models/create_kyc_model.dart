// To parse this JSON data, do
//
//     final CreateKycLevel1Model = CreateKycLevel1ModelFromJson(jsonString);

import 'dart:convert';

class CreateKycLevel1Model {
  final bool success;
  final String message;
  final String statusCode;

  CreateKycLevel1Model({
    required this.success,
    required this.message,
    required this.statusCode,
  });

  factory CreateKycLevel1Model.fromRawJson(String str) =>
      CreateKycLevel1Model.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateKycLevel1Model.fromJson(Map<String, dynamic> json) =>
      CreateKycLevel1Model(
        success: json["success"],
        message: json["message"],
        statusCode: json["statusCode"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "statusCode": statusCode,
      };
}
