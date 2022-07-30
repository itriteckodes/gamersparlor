// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/home/fragments/tournament/tournament_card.dart';
import 'package:gamersparlor/values/colors.dart';

class TournamentScreen extends StatelessWidget {
  const TournamentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_GREY,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, bottom: 10, left: 8),
              color: DARK_GREEN,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tournaments',
                      style: TextStyle(color: WHITE, fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          color: WHITE,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            "NBA 2K",
                            style: TextStyle(color: WHITE, fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(color: WHITE, borderRadius: BorderRadius.circular(10)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'teamladder');
                        },
                        child: TournamentCard()),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'teamladder');
                        },
                        child: TournamentCard()),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'teamladder');
                        },
                        child: TournamentCard()),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'teamladder');
                        },
                        child: TournamentCard()),
                  ]),
                )
              ]),
            )
          ],
        ),
      )),
    );
  }
}
