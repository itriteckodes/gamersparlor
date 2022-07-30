import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gamersparlor/api/ticket.dart';
import 'package:gamersparlor/screens/support/tickets/tickets_screen.dart';
import 'package:gamersparlor/static/input_field.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/static/text_area.dart';
import 'package:gamersparlor/static/topbar.dart';

class SupportScreen extends StatefulWidget {
  SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  String apitoken='0VnQ2xHb2GLbNrTKZ0DmCEUSlRV3xMWL0XboFJmjjXJgMeeyQifi8v3RAWLU';
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  createTicket() async {
    await TicketApi.create(subjectController, messageController);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarMenu(
              menu: false,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Contact Support',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InputField(title: 'Title *',
            controller: subjectController,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: TextArea(title: 'Description',controller: messageController,)),
            SizedBox(
              height: 20,
            ),
            Center(
                child: LargeButton(title: 'Generate Ticket', onPressed: () {
                  createTicket ();
                   Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TicketsScreen()));
                })),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
