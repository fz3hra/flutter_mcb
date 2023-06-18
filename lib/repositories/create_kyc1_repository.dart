import 'dart:convert';

import 'package:flutter_mcb_app/models/create_kyc_model.dart';
import 'package:flutter_mcb_app/utils/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CreateKyc1Repository {
  static Future<CreateKycLevel1Model> createUser(
    String title,
    String firstName,
    String lastName,
    String idNumber,
    String dateOfBirth,
    String gender,
  ) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? action = prefs.getString('token');

      String token =
          'Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLEj5m2vJlLwk7nKGTnXoPsb';
      final response = await http.post(
        Uri.parse(ApiConstants.kycLevel1),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $action'
        },
        body: jsonEncode(
          <String, dynamic>{
            "title": title,
            "firstName": firstName,
            "lastName": lastName,
            "phoneNumber": idNumber,
            "dateOfBirth": '2023-06-18T02:27:39.130Z',
            "gender": gender,
          },
        ),
      );
      print("response ${response.body}");
      if (response.statusCode == 200) {
        print("action $action");
        return CreateKycLevel1Model.fromRawJson(response.body);
      } else {
        throw Exception("could not create user");
      }
    } catch (e, s) {
      rethrow;
    }
  }
}
