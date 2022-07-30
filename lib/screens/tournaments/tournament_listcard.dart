import 'package:flutter/material.dart';
import 'package:gamersparlor/model/tournament.dart';
import 'package:gamersparlor/screens/home/fragments/home/platform.dart';
import 'package:gamersparlor/values/colors.dart';

class TournamentListCard extends StatelessWidget {
   TournamentListCard({Key? key, required this.tournament}) : super(key: key);
  final Tournament tournament;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          gradient:
              SweepGradient(center: AlignmentDirectional(1, -1), startAngle: 0.7, endAngle: 3.8, colors: const <Color>[
            Color(0XFF0D6630),
            Color(0XFF0D6630),
            Color(0xFF148535),
            Color(0xFF148535),
            Color(0XFF0D6630),
            Color(0XFF0D6630),
          ], stops: const <double>[
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
                    'Europe | \$375 ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: WHITE),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'FREE ENTRY | 3v3',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: WHITE),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                          for (var platforms in tournament.platforms) ...[
                          PlatformCard(platform: platforms),
                          SizedBox(
                            width: 12,
                          ),
                          ],
                    ]
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Prizes : ',
                        style: TextStyle(fontSize: 14, color: WHITE),
                      ),
                      Text(
                        '375 USD',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: WHITE,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '40 Credits',
                    style: TextStyle(fontSize: 16, color: WHITE),
                  ),
                  SizedBox(height: 15),
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
    );
  }
}
