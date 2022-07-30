import 'dart:developer';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gamersparlor/api/api.dart';
import 'package:gamersparlor/helpers/auth.dart';
import 'package:gamersparlor/helpers/loader_theme.dart';
import 'package:gamersparlor/model/messages.dart';
import 'package:gamersparlor/model/ticket.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/values/constants.dart';

class TicketApi {
  static create(subject, message) async {
    var Url = BASE_URL + 'ticket/create';
    var data = {
      'subject': subject.text,
      'message': message.text,
    };
    EasyLoading.show();
    var response = await Api.execute(url: Url, data: data);
    if (!response['error']) {
      EasyLoading.dismiss();
      return true;
    } else {
      Fluttertoast.showToast(msg: response['error_data']);
      EasyLoading.dismiss();
      return false;
    }
  }

  static getTickets() async {
    var url = BASE_URL + 'ticket/get';
    EasyLoading.show();
    var data = {};
    var response = await Api.execute(url: url, data: data);
    if (!response['error']) {
      List<Ticket> tickets = <Ticket>[];
      for (var ticket in response["ticket"]) {
        tickets.add(Ticket(ticket));
      }
      EasyLoading.dismiss();
      return tickets;
    } else {
      Fluttertoast.showToast(msg: response['error_data']);
      EasyLoading.dismiss();
      return false;
    }
  }
   static sendMessage(ticket, TicketMessage message) async {
     
    var url = BASE_URL + 'reply/create';
    // url += '?api_token=' + Auth.user().apiToken;
    var data = {'ticket_id': ticket.id, "message": message.text, "unique_id": message.uniqueId};
    var response = await Api.execute(url: url, data: data);
    log(response.toString());
    if (!response['error']) {
      return TicketMessage(message: response["message"]);
    } else {
      Fluttertoast.showToast(msg: response['error_data']);
      return false;
    }
  }
  static getMessages(ticket) async {
    // LoadingHelper.show();
    var url = BASE_URL + 'reply/get';
    var data = {'ticket_id': ticket.id};
    var response = await Api.execute(url: url, data: data);
    // LoadingHelper.dismiss();
    if (!response['error']) {
      return Ticket(response["ticket"]);
      
    } else {
      Fluttertoast.showToast(msg: response['error_data']);
      return false;
    }
  }

}
