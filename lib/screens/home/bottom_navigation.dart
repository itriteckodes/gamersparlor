// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamersparlor/values/colors.dart';

// ignore: non_constant_identifier_names
Widget BottomNavigation(_navigationMenuIndex, onTapBottomMenu) {
  return BottomNavigationBar(
    backgroundColor: DARK_GREEN,
    unselectedItemColor: Blue_accent,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    unselectedLabelStyle: TextStyle(color: GREY, fontWeight: FontWeight.w500),
    selectedLabelStyle: TextStyle(color: DARK_GREEN, fontWeight: FontWeight.w600),
    currentIndex: _navigationMenuIndex,
    onTap: (int index) {
      onTapBottomMenu(index);
    },
    items: [
      BottomNavigationBarItem(
          label: "Lounge",
          icon: Icon(
            Icons.home_outlined,
            size: 30,
          ),
          backgroundColor: DARK_GREEN),
      BottomNavigationBarItem(
        label: "Tournaments",
        icon: Icon(
          FontAwesomeIcons.trophy,
          size: 30,
        ),
      ),
      BottomNavigationBarItem(
        label: "Notifications",
        icon: Icon(
          FontAwesomeIcons.bell,
          size: 30,
        ),
      ),
      BottomNavigationBarItem(
        label: "Deposit",
        icon: Icon(
          FontAwesomeIcons.wallet,
          size: 30,
        ),
      ),
    ],
  );
}
