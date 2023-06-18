import 'dart:convert';

import 'package:flutter_mcb_app/models/create_user_model.dart';
import 'package:flutter_mcb_app/utils/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CreateUserRepository {
  static Future<CreateUser> createUser(
    String email,
    String password,
    String phoneNumber,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstants.createUserApi),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          <String, dynamic>{
            "email": email,
            "password": password,
            "phoneNumber": phoneNumber,
          },
        ),
      );
      print("response ${response.body}");
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        String token = jsonResponse['data']['token'];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);
        return CreateUser.fromRawJson(response.body);
      } else {
        throw Exception("could not create user");
      }
    } catch (e, s) {
      rethrow;
    }
  }
}
