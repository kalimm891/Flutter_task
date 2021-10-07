import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:karmas/screen/Login.dart';
import 'package:karmas/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiLogin with ChangeNotifier {
  Future getApi(String email, String password, BuildContext context) async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      print(response);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homes()));
      final res = jsonDecode(response.body);

      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

      final SharedPreferences pref = await _prefs;
      pref.setString('token', res["token"]);
    } else {
      throw Exception(' wrong id and password ');
    }
  }
}
