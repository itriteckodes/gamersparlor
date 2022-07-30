import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class TeamLadder extends StatefulWidget {
  TeamLadder({Key? key}) : super(key: key);

  @override
  State<TeamLadder> createState() => _TeamLadderState();
}

class _TeamLadderState extends State<TeamLadder> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawerEnableOpenDragGesture: true,
      drawer: SideDrawer(),
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarMenu(
              menu: true,
              showtext: true,
              text: 'Tournament Detail',
              ontap: openDrawer,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.885,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      color: DARK_GREEN,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                          ),
                          Divider(
                            thickness: 0.9,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Team ID',
                                style: TextStyle(fontSize: 16, color: WHITE),
                              ),
                              Text(
                                '36005014',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: WHITE),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Founded',
                                style: TextStyle(fontSize: 16, color: WHITE),
                              ),
                              Text(
                                'Mar 24,2022',
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: WHITE),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dispute Percentage',
                                style: TextStyle(fontSize: 16, color: WHITE),
                              ),
                              Text(
                                '36005014',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      color: DARK_GREEN,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Season Stats',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                          ),
                          Divider(
                            thickness: 0.9,
                          ),
                          Text(
                            'Winter 2022',
                            style: TextStyle(fontSize: 17, color: WHITE),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '276',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Place',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '13',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'BEST STREAK',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '13',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Streak',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '1207.42',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Team XP',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Spring 2022',
                                style: TextStyle(fontSize: 17, color: WHITE),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Badge(
                                borderRadius: BorderRadius.circular(5),
                                shape: BadgeShape.square,
                                badgeColor: Colors.purple,
                                badgeContent: Text(
                                  'Current Season',
                                  style: TextStyle(fontSize: 13, color: WHITE),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '1',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Place',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '50',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'BEST STREAK',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '50',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Streak',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '1380.7',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Team XP',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      color: DARK_GREEN,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ROSTER',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                          ),
                          Divider(
                            thickness: 0.9,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                child: Image.asset('assets/images/user.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Promos',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'GB RANK UNRANKED',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: WHITE,
                                        ),
                                      ),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: WHITE,
                                        ),
                                      ),
                                      Text(
                                        'ELIGIBLE',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: GREEN,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Badge(
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BadgeShape.square,
                                    badgeColor: Color.fromARGB(255, 8, 8, 8),
                                    badgeContent: Text(
                                      'LEADER',
                                      style: TextStyle(fontSize: 10, color: WHITE),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(color: GREY, borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                PopupMenuButton(
                                  initialValue: 2,
                                  child: Text(
                                    'Criminal#7234',
                                    style: TextStyle(fontSize: 18, color: WHITE),
                                  ),
                                  itemBuilder: (context) {
                                    return List.generate(5, (index) {
                                      return PopupMenuItem(
                                        value: index,
                                        child: Text('Match $index'),
                                      );
                                    });
                                  },
                                ),
                                Icon(
                                  Icons.arrow_drop_down_rounded,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Criminal#7234',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'GAMERTAG',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0%',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'DISPUTE',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '63',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'ARENA RANK',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                child: Image.asset('assets/images/user.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Promos',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'GB RANK UNRANKED',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: WHITE,
                                        ),
                                      ),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: WHITE,
                                        ),
                                      ),
                                      Text(
                                        'ELIGIBLE',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: GREEN,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Badge(
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BadgeShape.square,
                                    badgeColor: Color.fromARGB(255, 8, 8, 8),
                                    badgeContent: Text(
                                      'LEADER',
                                      style: TextStyle(fontSize: 10, color: WHITE),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(color: GREY, borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                PopupMenuButton(
                                  initialValue: 2,
                                  child: Text(
                                    'Criminal#7234',
                                    style: TextStyle(fontSize: 18, color: WHITE),
                                  ),
                                  itemBuilder: (context) {
                                    return List.generate(5, (index) {
                                      return PopupMenuItem(
                                        value: index,
                                        child: Text('Match $index'),
                                      );
                                    });
                                  },
                                ),
                                Icon(
                                  Icons.arrow_drop_down_rounded,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Criminal#7234',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'GAMERTAG',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '0%',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'DISPUTE',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '63',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'ARENA RANK',
                                    style: TextStyle(fontSize: 15, color: WHITE),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      color: DARK_GREEN,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Matches',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                          ),
                          Divider(
                            thickness: 0.9,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 60,
                                child: Image.asset('assets/images/user.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ZeroSectors',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'WON',
                                            style: TextStyle(fontSize: 16, color: GREEN, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'RESULT',
                                            style: TextStyle(fontSize: 15, color: WHITE),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 35,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Apr 08 2022,11:30 PM EDT',
                                            style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Match Time',
                                            style: TextStyle(fontSize: 15, color: WHITE),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80,
                                width: 60,
                                child: Image.asset('assets/images/user.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ZeroSectors',
                                    style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'WON',
                                            style: TextStyle(fontSize: 16, color: GREEN, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'RESULT',
                                            style: TextStyle(fontSize: 15, color: WHITE),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 35,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Apr 08 2022,11:30 PM EDT',
                                            style: TextStyle(fontSize: 16, color: WHITE, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Match Time',
                                            style: TextStyle(fontSize: 15, color: WHITE),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
