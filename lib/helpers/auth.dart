
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:gamersparlor/helpers/ram.dart';
import 'package:gamersparlor/helpers/shared_prefrences.dart';
import 'package:gamersparlor/model/user.dart';


class Auth {
  static User? user() {
    return Ram.user;
  }

  static Future login(User user) async {
    Ram.user = user;
    print(Ram.user.apiToken);
    Auth.save();
  }
  static Future secretlogin(User user) async {
    Ram.user = user;
  }

  static Future save() async {
    SharedPreferencesHelper.setString('api_token', Ram.user.apiToken!);
  }

  static check() async {
    String? apiToken = SharedPreferencesHelper.getString('api_token');
    if (apiToken != null)
     return true;
  }

  static Future logout() async {
    SharedPreferencesHelper.remove('api_token');
    // Navigator.pushNamedAndRemoveUntil(navigatorKey.currentContext!, "login", ModalRoute.withName('splash'));
  }
}
