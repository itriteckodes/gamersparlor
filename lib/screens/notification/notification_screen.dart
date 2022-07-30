import 'package:flutter/material.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/notify_card.dart';
import 'package:gamersparlor/static/topbar.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            TopBarMenu(
              showtext: true,
              text: 'Notification',
              ontap: openDrawer,
            ),
            SizedBox(height: 30,),
            NotifyCard(title: '10 credits deposit in your account',),
            NotifyCard(title: '10 credits deposit in your account',),
            NotifyCard(title: '10 credits deposit in your account',),
            NotifyCard(title: '10 credits deposit in your account',),
          ],
        ),
      )),
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: true,
      drawer: SideDrawer(),
    );
  }
}
