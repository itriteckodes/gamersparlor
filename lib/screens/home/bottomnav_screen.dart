// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, curly_braces_in_flow_control_structures, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/deposit/deposit_screen.dart';
import 'package:gamersparlor/screens/home/bottom_navigation.dart';
import 'package:gamersparlor/screens/home/fragments/home/home_screen.dart.dart';
import 'package:gamersparlor/screens/profile/profile_screen.dart';
import 'package:gamersparlor/screens/home/fragments/tournament/tournament_screen.dart';
import 'package:gamersparlor/screens/notification/notification_screen.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/values/colors.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key, this.selectedIndex}) : super(key: key);

  final selectedIndex;
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> with RouteAware {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // final GlobalKey<ChatsFragmentState> chatFragmentState = GlobalKey<ChatsFragmentState>();

  int _navigationMenuIndex = 0;

  switchFragment(int index) {
    setState(() {
      _navigationMenuIndex = index;
    });
  }

  checkForSelectedIndex() {
    if (widget.selectedIndex != null) _navigationMenuIndex = widget.selectedIndex;
  }

  @override
  void initState() {
    checkForSelectedIndex();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _fragments = [
      HomeScreen(),
      TournamentScreen(),
      NotificationScreen(),
      DepositScreen(),
    ];
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: DARK_GREEN,
        body: SafeArea(
          child: _fragments[_navigationMenuIndex],
        ),
        bottomNavigationBar: BottomNavigation(_navigationMenuIndex, switchFragment),
        endDrawerEnableOpenDragGesture: true,
        drawer: SideDrawer(),
      ),
    );
  }
}
