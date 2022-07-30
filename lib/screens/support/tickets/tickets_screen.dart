import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gamersparlor/api/ticket.dart';
import 'package:gamersparlor/model/ticket.dart';
import 'package:gamersparlor/screens/support/tickets/detail/ticket_detail_screen.dart';
import 'package:gamersparlor/screens/support/tickets/ticket_card.dart';
import 'package:gamersparlor/static/circular_button.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';
import 'package:get/get.dart';

class TicketsScreen extends StatefulWidget {
  TicketsScreen({Key? key}) : super(key: key);

  @override
  _TicketsScreenState createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketsScreen> {
  List<Ticket> tickets = <Ticket>[];
  gotoHomeScreen() {
    Navigator.of(context).pop();
  }

  gotoTicketDetailScreen(ticket) {
    log("""fyfyyyfyffyyyfyfyyfyfyfyfyyyyffy""");
    // print(ticket.toString());
     Navigator.push(context, MaterialPageRoute(builder: (context) => TicketDetailScreen(ticket: ticket)));
  }

  getTickets() async {
    tickets = await TicketApi.getTickets();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    getTickets();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBarMenu(
                showtext: true,
                text: 'All Tickets',
                menu: false,
              ),
              SizedBox(height: 30),
              for (Ticket ticket in tickets) ...[
                TicketCard(ticket: ticket, onTap: gotoTicketDetailScreen),
                SizedBox(height: 10),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
