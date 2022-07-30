// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class LeagueCard extends StatelessWidget {
  const LeagueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight, colors: [
             BLUISH_GREEN,
           BLUISH_GREEN,
        BLUISH_GREEN.withOpacity(0.8),
           BLUISH_GREEN.withOpacity(0.8),
          
            BLUISH_GREEN,
           BLUISH_GREEN,
          ], stops: [
            0.0,
            0.3,
            0.3,
            0.7,
            0.7,
            1.0
          ]),
        
          borderRadius: BorderRadius.circular(10)),
      child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Squads | Europe',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: WHITE),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        'Team size :',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                      ),Text(
                        '202',
                        style: TextStyle(fontSize: 15, color: WHITE),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                          Row(
                    children: [
                      Text(
                        'Season :',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                      ),
                      SizedBox(width: 5,),
                          Badge(
                        borderRadius: BorderRadius.circular(5),
                        shape: BadgeShape.square,
                        badgeColor: WHITE,
                        badgeContent: Text(
                          'Spring 2022',
                          style: TextStyle(fontSize: 12, color: PURPLE),
                        ),
                      ),
                    ],
                  ),
                
                  SizedBox(height: 10),
                  Text(
                    'Europe',
                    style: TextStyle(fontSize: 32, color: WHITE,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                    
                      Text(
                        '3-12 players',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: WHITE,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
