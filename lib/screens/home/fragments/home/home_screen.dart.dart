// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamersparlor/api/tournament.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/screens/home/fragments/home/find_match_card.dart';
import 'package:gamersparlor/screens/home/fragments/home/league_card.dart';
import 'package:gamersparlor/screens/home/fragments/home/tournament_card.dart';
import 'package:gamersparlor/screens/home/fragments/home/create_match.dart';
import 'package:gamersparlor/screens/home/fragments/home/match_card.dart';
import 'package:gamersparlor/screens/tournaments/tournaments_screen.dart';
import 'package:gamersparlor/static/icon_button.dart';
import 'package:gamersparlor/static/rounded_button.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Tournament> tournaments = List.empty();
  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  fetchTornaments() async {
    var result = await TournamentApi.get_tournament();
    setState(() {
      tournaments = result;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchTornaments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SideDrawer(),
      endDrawerEnableOpenDragGesture: true,
      drawerEnableOpenDragGesture: true,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 415,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: const [
                        BUTTON_BLUE,
                        MAIN_COLOR,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 3.0],
                      tileMode: TileMode.clamp,
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/footbal.png'), opacity: 0.4, alignment: Alignment.topRight),
                  ),
                  child: Column(children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopBarMenu(
                          ontap: openDrawer,
                          notify: true,
                          menu: true,
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(height: 5,),
                          Text(
                            'Matches',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29, color: WHITE),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: const [
                              MatchCard(),
                              SizedBox(
                                height: 15,
                              ),
                              CreateMatch(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/images/tournament.png'),
                          ),
                          Text(
                            'Tournaments',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButtonCustom(
                        onPressed: () {
                          Get.to(() => TournamentListScreen(tournaments:tournaments));
                        },
                        icon: Icons.arrow_forward,
                        color: LIGHT_GREEN,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        for (var tournament in tournaments.getRange(0, 2)) ...[
                          TournamentCard(tournament: tournament),
                          SizedBox(
                            width: 10,
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/images/ladder.png'),
                          ),
                          Text(
                            'leagues',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          PopupMenuButton(
                            initialValue: 2,
                            child: Center(
                                child: Text(
                              'Season ',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            itemBuilder: (context) {
                              return List.generate(3, (index) {
                                
                                return PopupMenuItem(
                                  value: index,
                                  child: Text(
                                    'Season $index',
                                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
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
                      IconButtonCustom(
                        onPressed: () {},
                        icon: Icons.arrow_forward,
                        color: LIGHT_GREEN,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: const [
                        LeagueCard(),
                        SizedBox(
                          width: 10,
                        ),
                        LeagueCard(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
          FindMatchCard()
        ],
      ),
    );
  }
}
