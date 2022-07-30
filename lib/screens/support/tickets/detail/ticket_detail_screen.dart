import 'package:flutter/material.dart';
import 'package:gamersparlor/api/ticket.dart';
import 'package:gamersparlor/model/messages.dart';
import 'package:gamersparlor/model/ticket.dart';
import 'package:gamersparlor/static/chat_input.dart';
import 'package:gamersparlor/static/circular_button.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:gamersparlor/values/size.dart';

class TicketDetailScreen extends StatefulWidget {
  TicketDetailScreen({Key? key, @required this.ticket}) : super(key: key);

  final Ticket? ticket;
  @override
  _TicketDetailScreenState createState() => _TicketDetailScreenState(ticket!);
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
  final TextEditingController messageController = new TextEditingController();
  ScrollController scrollController = new ScrollController();
  Ticket? ticket;

  _TicketDetailScreenState(Ticket ticket) {
    this.ticket = ticket;
  }

  gotoArrivingScreen() {
    Navigator.of(context).pop();
  }

  fetchTicketWithMessages() async {
    ticket = await TicketApi.getMessages(ticket);
    setState(() {});
  }

  // sendMessage() async {
  //   String msg = messageController.text;
  //   messageController.clear();

  //   TicketMessage message = TicketMessage(text: msg);
  //   ticket.messages.add(message);
  //   setState(() {});
  //   scrollController.animateTo(scrollController.position.maxScrollExtent + 175,
  //       duration: Duration(milliseconds: 500), curve: Curves.ease);

  //   TicketMessage mMessage = await TicketApi.sendMessage(ticket, message);
  //   int index = ticket.messages.indexWhere((msg) => msg.uniqueId == mMessage.uniqueId);
  //   print(ticket.messages[index].text);
  //   ticket.messages.removeAt(index);
  //   ticket.messages.insert(index, mMessage);
  //   setState(() {});
  // }

  @override
  void initState() {
    super.initState();
      fetchTicketWithMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                    Icons.arrow_back_ios,
                          color: Blue_accent,
                          size: 28,
                    ),
                  ),
                  Text( ticket!.subject!, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  CircularButton(transparent: true, onTap: () {})
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // SizedBox(height: 10),
                          // MessageBubble(type: 'right', text: ticket.message, time: 'subject'),
                          // SizedBox(height: 10),
                          // for (TicketMessage message in ticket.messages) ...[
                          //   SizedBox(height: 10),
                          //   MessageBubble(
                          //       type: message.type == RIDER_MSG ? 'right' : 'left',
                          //       text: message.text,
                          //       time: message.time),
                          // ],
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: WHITE,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      children: [
                        ChatInputField(controller: messageController),
                        CircularButton(onTap: (){}, icon: Icons.send),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
