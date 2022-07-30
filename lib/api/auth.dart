import 'dart:convert';
import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gamersparlor/api/api.dart';
import 'package:gamersparlor/helpers/auth.dart';
import 'package:gamersparlor/model/user.dart';
import 'package:gamersparlor/values/constants.dart';

class AuthApi {
  static register(name, email, password) async {
     var url = BASE_URL + 'register';
    var formData = {
      'name': name.text,
      'email': email.text,
      'password': password.text,
    };
    EasyLoading.show();
    var response = await Api.execute(url: url, data: formData);
    if (!response['error']) {
      User user = User(response['user']);
      Auth.login(user);
      EasyLoading.dismiss();
      return true;
    } else {
      EasyLoading.dismiss();
      Fluttertoast.showToast(msg: response['error_data']);
      return false;
    }
  }

  static login(email, password) async {
     var url = BASE_URL + 'login';
    var data = {
      'email': email.text,
      'password': password.text,
    };
    EasyLoading.show();
    var response = await Api.execute(url: url, data: data);
    log(response.toString());
    if (!response['error']) {
      User user = User(response['user']);
      Auth.login(user);
      EasyLoading.dismiss();
      return true;
    } else {
      Fluttertoast.showToast(msg: response['error_data']);
      EasyLoading.dismiss();
      return false;
    }
  }


  // static logout() async {
  //   Auth.logout();
  // }

}
