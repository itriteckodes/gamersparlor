import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:gamersparlor/model/platform.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/screens/home/fragments/home/platform.dart';
import 'package:gamersparlor/values/colors.dart';

class TournamentCard extends StatefulWidget {
   TournamentCard({Key? key,required this.tournament,}) : super(key: key);
   Tournament tournament;

  @override
  State<TournamentCard> createState() => _TournamentCardState();
}

class _TournamentCardState extends State<TournamentCard> {
// String platform;
// Platform platform;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.87,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              gradient: SweepGradient(
                  center: AlignmentDirectional(1, -1),
                  startAngle: 0.7,
                  endAngle: 3.5,
                  colors: const <Color>[
                    Color(0xFF148535),
                    Color(0xFF148535),
                    Color(0XFF0D6630),
                    Color(0XFF0D6630),
                    Color(0xFF148535),
                    Color(0xFF148535),
                  ],
                  stops: const <double>[
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '${widget.tournament.title}',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: WHITE),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ENTRY FEES: ${widget.tournament.price} | 3v3',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: WHITE),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                           for (var platforms in widget.tournament.platforms) ...[
                          PlatformCard(platform: platforms),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        '1/32 joined',
                        style: TextStyle(fontSize: 16, color: WHITE),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${widget.tournament.prize} Credits',
                        style: TextStyle(fontSize: 16, color: WHITE),
                      ),
                      SizedBox(height: 40),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            'Region :',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: WHITE),
                          ),
                          Text(
                            'Europe',
                            style: TextStyle(fontSize: 15, color: WHITE),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
        Positioned(
            left: 20,
            child: Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      DARK_GREEN,
                      MAIN_COLOR,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.65, 2.0],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    'Total Prize : ',
                    style: TextStyle(fontSize: 14, color: WHITE),
                  ),
                  Text(
                    '${widget.tournament.prize} credits',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: WHITE,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
