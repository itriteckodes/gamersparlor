import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gamersparlor/helpers/url.dart';

class Api {
  static execute({url, data}) async {
    var result;
    Dio dio = new Dio();
    try {
      // log('TRITECAPI Url : ' + url.toString());
      // log('TRITECAPI Data : ' + data.toString());
      // log('TRITECAPI TestUrl : ' + url + URL.toGetString(data));
      result = await dio.post(url, data: data);
      var response = jsonDecode(result.toString());
      // log('TRITECAPI Result : ' + result.toString());

      return response;
    } on DioError catch (e) {
      // print('Error URL : ' + url.toString());
      // print('Error DATA : ' + data.toString());
      // print('Error TestUrl : ' + url + URL.toGetString(data));
      print('Error : ' + e.toString());
      print('Error RESPONSE: ' + e.response.toString());
      // print('Error DATA: ' + e.error.toString());
      print('Error Message: ' + e.message.toString());
      print('Error TYPE: ' + e.type.toString());
    }
  }
}
