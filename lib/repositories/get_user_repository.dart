import 'dart:convert';

import 'package:flutter_mcb_app/models/get_user_model.dart';
import 'package:flutter_mcb_app/utils/api_constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class GetUserRepository {
  static Future<GetUser> getTodosRepository(
    String email,
    String password,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstants.getUserApi),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          <String, dynamic>{
            "email": email,
            "password": password,
          },
        ),
      );
      if (response.statusCode == 200) {
        print("response ${response.body}");
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        String token = jsonResponse['data']['token'];
        print("token $token");
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);
        return GetUser.fromRawJson(response.body);
      } else {
        throw Exception("Unable to get user");
      }
    } catch (exception, stack) {
      print("exception $exception");
      print("stack $stack");
      rethrow;
    }
  }
}
