// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/creatematch/create_match_screen.dart';
import 'package:gamersparlor/static/icon_button.dart';
import 'package:gamersparlor/static/large_button.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:get/get.dart';

class FindMatchCard extends StatelessWidget {
  const FindMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          color: DARK_GREEN,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButtonCustom(onPressed: () {}, icon: Icons.chat_bubble_outline),
              LargeButton(
                onPressed: () {Get.to(()=>CreateMatchScreen());},
                title: 'Find a Match',
                color: LIGHT_GREEN,
                sreenRatio: 0.7,
              ),
            ],
          )),
    );
  }
}
