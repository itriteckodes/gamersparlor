// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamersparlor/values/colors.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: WHITE, borderRadius: BorderRadius.circular(10)),
      child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.63,
                  child: Text(
                    '2K New Players & Rookies (Any Teams)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: DARK_GREEN),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '\$30',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: DARK_GREEN,
                      ),
                    ),
                    Text(
                      'Total Prizes',
                      style: TextStyle(fontSize: 13, color: MAIN_COLOR),
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 8),
              Text(
                'Current NBA Teams',
                style: TextStyle(fontSize: 20, color: DARK_GREEN.withOpacity(0.6)),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Badge(
                    borderRadius: BorderRadius.circular(5),
                    shape: BadgeShape.square,
                    badgeColor: DARK_GREEN,
                    badgeContent: Text(
                      'FIFA 22',
                      style: TextStyle(fontSize: 12, color: WHITE),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Badge(
                    borderRadius: BorderRadius.circular(5),
                    shape: BadgeShape.square,
                    badgeColor: MAIN_COLOR,
                    badgeContent: Text(
                      'PlayStation 5',
                      style: TextStyle(fontSize: 12, color: WHITE),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1/32 joined',
                    style: TextStyle(fontSize: 16, color: MAIN_COLOR),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'completed',
                        style: TextStyle(fontSize: 16, color: MAIN_COLOR),
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.trophy,
                            color: YELLOW,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(45)),
                              child: FadeInImage(
                                placeholder: AssetImage('assets/images/1.jpg'),
                                image: AssetImage('assets/images/1.jpg'),
                                fit: BoxFit.fill,
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'kessiah',
                            style: TextStyle(color: DARK_GREEN, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Divider(
                color: GREY,
              )
            ],
          )),
    );
  }
}
