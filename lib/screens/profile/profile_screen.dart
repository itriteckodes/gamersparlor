import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/profile/fragments/profile/follower_detail.dart';
import 'package:gamersparlor/screens/profile/fragments/profile/mathches_history.dart';
import 'package:gamersparlor/screens/profile/fragments/profile/user_detail.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: BLACKISH,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 15, left: 8),
              color: WHITE,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu,
                      color: BLACK,
                    ),
                    Text(
                      'User Profile',
                      style: TextStyle(
                          color: BLACK,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    
                    SizedBox(width: 40,)
                    
                  ]),
            ),
            
            Row(
              children: [
                 UserDetail()
              ],
            ),
            FollowerDetail(),
            MatchDetail(),
          ],
        ),
      )),
    );
  }
}
